# Hive Client
The `hive client` provided by the **Apache Hive** does not include all required libraries to connet to hive.

This small project provides `uber jars` or `all-in-one` jars for ease of use.  
We make NO code changes within the packaged jar file.

# Releases
Below are the available builds, all builds are built with `JDK 8`, and target `java 1.8`  
Note that technically any **hive** `2.x` series driver should work with `hive 2`  
We have generally found it is best to ue a driver that is *near* your version of **Hive** and **Hadoop**.

- `3.1.1, hadoop 3.1.1` *latest in 3.x*
- `2.3.7, hadoop 2.9.1` *latest in 2.x*
- `2.3.4, hadoop 2.7.7` *2018, 2.x release*
- `2.1.1, hadoop 3.0.3` *cdh 6.x compatible*
- `1.2.2, hadoop 2.6.5` *last 1.x release*
- `1.1.0, hadoop 2.6.5` *cdh 5.4 to 5.16 compatible*

#Components
The required components for an `all-in-one` **JDBC Driver** WITH `kerberos` support are:
- `hive-metastore*.jar`
- `hive-service*.jar`
- `hive-common*.jar`
- `hive-beeline*.jar`
- `hive-jdbc*.jar`
- `hive-shims*.jar`
- `hive-serde*.jar`
- `hive-contrib*.jar`
- `hive-exec*.jar`
- `hadoop-mapreduce-client-core*.jar`


# Build

You can build all the packaged versions using the `build.sh` script provided:
```
bash build.sh
```

You can build a custom version by passing `hive` and `hadoop` versions:
```bash
 mvn package -f "hive-client-aio-jre8.pom" "-Dhive.version=3.1.1" "-Dhadoop.version=3.1.1" "-Dmaven.compiler.executable=/usr/lib/jvm/java-8-openjdk-amd64/bin/javac"
```
*Note:* `jdk 1.8` is required to build `hadoop`, and `hive` dependencies.
You must specify the path to a **JDK 1.8** `javac` compiler via `-Dmaven.compiler.executable`

## Errors:
- If you get this error it means that you are running maven with JVM > 1.8.
  `jdk.tools` is no longer provided as of `jdk 1.9`.

        Could not resolve dependencies for project org.obdp:hive-client:jar:2.1.1: Could not find artifact jdk.tools

- `[WARNING] Cannot include project artifact: org.obdp:hive-client:jar:2.3.7; it doesn't have an associated file or directory`  
  This is normal - we don't need to build the default jar so we skip it.

# JDK
As of this writing building `Hadoop 3.x` and `Hive 2.x` requires `jdk 1.8`.

## Controlling which JDK is default
The following command will list the installed JDK's and allow you to choose which one should be default
```bash
sudo update-alternatives --config java
```

## Install
To install JDK 1.8 on ubuntu/debian:
```bash
sudo apt-get install openjdk-8-jdk
```

