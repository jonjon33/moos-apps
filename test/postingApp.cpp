#include<MOOS/libMOOS/Comms/MOOSAsyncCommClient.h>
#include<MOOS/libMOOS/Utils/CommandLineParser.h>

bool OnConnect(void * pParam)
{
	CMOOSCommClient* pC = reinterpret_cast<CMOOSCommClient*> (pParam);
	pC->Register("X",0.0);
	return true;
}

bool OnMail (void * pParam)
{
	CMOOSCommClient* pC = reinterpret_cast<CMOOSCommClient*> (pParam);
	MOOSMSG_LIST M;
	pC->Fetch(M);

	MOOSMSG_LIST::iterator q;

	for(q=M.begin();q!=M.end();q++)
	{
		q->Trace();
	}
	return true;
}

int main(int argc, char * argv[])
{
	MOOS::CommandLineParser P(argc,argv);

	std::string db_host = "localhost";
	P.GetVariable("--moos_host",db_host);

	int db_port = 9000;
	P.GetVariable("--moos_port",db_port);

	std::string my_name = "Practice App 03";
	P.GetVariable("--moos_name",my_name);

	MOOS::MOOSAsyncCommClient Comms;

	Comms.SetOnMailCallBack(OnMail,&Comms);
	Comms.SetOnConnectCallBack(OnConnect,&Comms);

	Comms.Run(db_host,db_port,my_name);

	std::vector<unsigned char> X(100);
	int Y = 0;

	while(1)
	{
		MOOSPause(1000);
		Comms.Notify("X",X);
		Comms.Notify("Y",Y++);
	}
	return 0;
}
