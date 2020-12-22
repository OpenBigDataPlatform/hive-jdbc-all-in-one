#!/usr/bin/env bash

mvn package --batch-mode --update-snapshots -f "hive-client-aio-jre8.pom" "-Dhive.version=3.1.1" "-Dhadoop.version=3.1.1"
mvn package --batch-mode --update-snapshots -f "hive-client-aio-jre8.pom" "-Dhive.version=2.3.7" "-Dhadoop.version=2.9.1"
mvn package --batch-mode --update-snapshots -f "hive-client-aio-jre8.pom" "-Dhive.version=2.3.4" "-Dhadoop.version=2.7.7"
mvn package --batch-mode --update-snapshots -f "hive-client-aio-jre8.pom" "-Dhive.version=2.1.1" "-Dhadoop.version=3.0.3"
mvn package --batch-mode --update-snapshots -f "hive-client-aio-jre8.pom" "-Dhive.version=1.2.2" "-Dhadoop.version=2.6.5"
mvn package --batch-mode --update-snapshots -f "hive-client-aio-jre8.pom" "-Dhive.version=1.1.0" "-Dhadoop.version=2.6.5"