$localPwd = pwd
cd C:\kafka\bin\windows
start kafka-server-start.bat ..\..\config\server.properties
cd $localPwd