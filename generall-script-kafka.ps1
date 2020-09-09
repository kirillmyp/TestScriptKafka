
<!--Create a topic to store your events-->
.\kafka-topics.bat --create --topic quickstart-events-topic --bootstrap-server localhost:9092

<!--Chech state topic-->
.\kafka-topics.bat --describe --topic quickstart-events-topic --bootstrap-server localhost:9092

<!--Write some events into the topic-->
.\kafka-console-producer.bat --topic quickstart-events-topic --bootstrap-server localhost:9092
This is my first event
'This is my second event'
<!-- Ctrl-C -->

<!--Write some events into the topic and send to consumer by hashmap -->
.\kafka-console-producer.bat --topic quickstart-events-topic --bootstrap-server localhost:9092 --property "parse.key=true" --property "key.separator=:"
n:send to second
m:send to first
<!-- Ctrl-C -->


<!--Write some events into the topic and send to consumer by round-robin -->
.\kafka-console-producer.bat --topic quickstart-events-topic --bootstrap-server localhost:9092
send to second
send to first
<!-- Ctrl-C -->

<!--Read the events-->
.\kafka-console-consumer.bat --topic quickstart-events-topic --from-beginning --bootstrap-server localhost:9092
<!-- That broke powershell -->
<!-- Ctrl-C -->


<!--Read the events-->
.\kafka-console-consumer.bat --topic quickstart-events-topic --from-beginning --bootstrap-server localhost:9092 --group client02
<!-- That broke powershell -->
<!-- Ctrl-C -->


<!--get list brokers-->
zookeeper-shell.bat localhost:9021 ls /brokers/ids
<!-- Ctrl-C -->


<!--Terminate the Kafka environment-->

<!--Stop the producer and consumer clients with Ctrl-C, if you havent done so already -->
<!--Stop the Kafka broker with Ctrl-C-->
<!--Lastly, stop the ZooKeeper server with Ctrl-C-->
<!-- rm -rf /tmp/kafka-logs /tmp/zookeeper -->
<!-- Ctrl-C -->
