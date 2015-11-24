#include "MOOS/libMOOS/Comms/MOOSAsyncCommClient.h"

bool OnConnect( void * pParam ){
	CMOOSCommClient* pC =  reinterpret_cast<CMOOSCommClient*> (pParam);
	pC->Register( "Greeting" , 0.0 );
	return true;
}



int main( int argc , char * argv[] )
{
	MOOS::MOOSAsyncCommClient Comms;
	Comms.SetOnConnectCallBack(OnConnect,&Comms);
	Comms.Run( "localhost" , 9000 , "HelloApp" );


	while(1)
	{
		MOOSPause(1000);
		Comms.Notify("Greeting","Hello");

		MOOSMSG_LIST M;
		Comms.Fetch(M);

		MOOSMSG_LIST::iterator q;

		for(q = M.begin();q!=M.end();q++)
		{
			q->Trace();
		}
	}
	return 0;
}
