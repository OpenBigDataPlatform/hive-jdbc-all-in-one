# Hive Client
The `hive client` provided by the **Apache Hive** does not include all required libraries to connet to hive.

This small project provides `uber jars` or `all-in-one` jars for ease of use.  
We make NO code changes within the packaged jar file.

## [All Releases](https://github.com/OpenBigDataPlatform/hive-jdbc-all-in-one/packages/549502/versions)

 Click one of the links below to be taken to the release package.  
 On the right side of the github page you'll see a link to download the `jar` for a given release.

- [hive-client-3.1.1-hdfs-3.1.1-aio.jar](https://github.com/OpenBigDataPlatform/hive-jdbc-all-in-one/packages/549502?version=hive-client-3.1.1-hdfs-3.1.1-aio)
  **latest in `3.x`**
- [hive-client-2.3.7-hdfs-2.9.1-aio.jar](https://github.com/OpenBigDataPlatform/hive-jdbc-all-in-one/packages/549502?version=hive-client-2.3.7-hdfs-2.9.1-aio) 
  **latest in `2.x`**
- [hive-client-2.1.1-hdfs-3.0.3.jar]()
  **cdh `6.x` compatible**
- [hive-client-2.3.4-hdfs-2.7.7-aio.jar](https://github.com/OpenBigDataPlatform/hive-jdbc-all-in-one/packages/549502?version=hive-client-2.3.4-hdfs-2.7.7-aio) 
  **2018, `2.x` release**
- [hive-client-1.2.2-hdfs-2.6.5-aio.jar](https://github.com/OpenBigDataPlatform/hive-jdbc-all-in-one/packages/549502?version=hive-client-1.2.2-hdfs-2.6.5-aio)
  **last `1.x` release**
- [hive-client-1.1.0-hdfs-2.6.5-aio.jar](https://github.com/OpenBigDataPlatform/hive-jdbc-all-in-one/packages/549502?version=hive-client-1.1.0-hdfs-2.6.5-aio) 
  **cdh `5.4` to `5.16` compatible**

## Components
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


## Build

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

### Errors:
- If you get this error it means that you are running maven with JVM > 1.8.
  `jdk.tools` is no longer provided as of `jdk 1.9`.

        Could not resolve dependencies for project org.obdp:hive-client:jar:2.1.1: Could not find artifact jdk.tools

- `[WARNING] Cannot include project artifact: org.obdp:hive-client:jar:2.3.7; it doesn't have an associated file or directory`  
  This is normal - we don't need to build the default jar so we skip it.