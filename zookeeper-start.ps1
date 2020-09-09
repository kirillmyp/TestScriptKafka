$localPwd = pwd
cd C:\kafka\bin\windows
start zookeeper-server-start.bat ..\..\config\zookeeper.properties
cd $localPwd