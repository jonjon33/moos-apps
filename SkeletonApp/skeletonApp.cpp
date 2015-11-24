#include "MOOS/libMOOS/Comms/MOOSAsyncCommClient.h"
#include "MOOS/libMOOS/Utils/CommandLineParser.h"
#include "MOOS/libMOOS/Utils/ConsoleColours.h"
#include "MOOS/libMOOS/Utils/ThreadPrint.h"

MOOS::ThreadPrint gPrinter(std::cout);

bool OnConnect(void * pParam)
{
	CMOOSCommClient* pC = reinterpret_cast<CMOOSCommClient*> (pParam);
	return pC->Register("*","C*",0.0);
}

bool DefaultMail(CMOOSMsg & M, void * pParam)
{
	CMOOSCommClient* pC = reinterpret_cast<CMOOSCommClient*> (pParam);
	gPrinter.SimplyPrintTimeAndMessage(pC->GetMOOSName()+ " : Rx : "+M.GetKey()+" from "+M.GetSource(), MOOS::ThreadPrint::GREEN);
	return true;
}

int main(int argc, char * argv[])
{
	//Built in command line parser: creates object P associating
	//--option_name and its value
	MOOS::CommandLineParser P(argc,argv);

	std::string db_host="localhost";
	P.GetVariable("--moos_host",db_host);
	int db_port=9000;
	P.GetVariable("--moos_port",db_port);
	std::string my_name = "Skeleton App";
	P.GetVariable("--moos_name",my_name);

	MOOS::MOOSAsyncCommClient Comms;
	Comms.SetOnConnectCallBack(OnConnect,&Comms);
	Comms.AddMessageCallBack("default","*",DefaultMail,&Comms);
	Comms.Run(db_host,db_port,"C-"+my_name+"-01");

	std::vector<unsigned char> data(1000);
	while(1)
	{
		MOOSPause(10);
		Comms.Notify("V1",data);
		Comms.Notify("V2","More and more data");
	}
	return 0;
}
