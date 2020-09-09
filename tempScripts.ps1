
.\kafka-topics.bat --alter --partitions 2  --topic quickstart-events-topic --bootstrap-server localhost:9092



.\kafka-console-consumer.bat --topic quickstart-events-topic --from-beginning --bootstrap-server localhost:9092 --property groupe.id=client01

.\kafka-console-consumer.bat --topic quickstart-events-topic --from-beginning --bootstrap-server localhost:9092 --group client02


.\kafka-console-producer.bat --topic quickstart-events-topic --bootstrap-server localhost:9092 --property "parse.key=true" --property "key.separator=:"