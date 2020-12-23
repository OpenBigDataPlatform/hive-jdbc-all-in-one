# Hive Client
The `hive client` provided by the **Apache Hive** project does not include all required libraries to connect to hive.

This small project provides `uber jars` or `all-in-one` jars for ease of use.  
We make NO code changes within the packaged jar file.

## [All Releases](https://github.com/OpenBigDataPlatform/hive-jdbc-all-in-one/releases)

 Use the links below to download `hive-client` `all-in-one jar`

- [hive-client-3.1.1-hdfs-3.1.1-aio.jar](https://github.com/OpenBigDataPlatform/hive-jdbc-all-in-one/releases/download/hive-client-3.1.1-hdfs-3.1.1/hive-client-3.1.1-hdfs-3.1.1-aio.jar)
  **latest in `3.x`**
- [hive-client-2.3.7-hdfs-2.9.1-aio.jar](https://github.com/OpenBigDataPlatform/hive-jdbc-all-in-one/releases/download/hive-client-2.3.7-hdfs-2.9.1/hive-client-2.3.7-hdfs-2.9.1-aio.jar)
  **latest in `2.x`**
- [hive-client-2.3.4-hdfs-2.7.7-aio.jar](https://github.com/OpenBigDataPlatform/hive-jdbc-all-in-one/releases/download/hive-client-2.3.4-hdfs-2.7.7/hive-client-2.3.4-hdfs-2.7.7-aio.jar) 
  **2018, `2.x` release*
- [hive-client-2.1.1-hdfs-3.0.3-aio.jar](https://github.com/OpenBigDataPlatform/hive-jdbc-all-in-one/releases/download/hive-client-2.1.1-hdfs-3.0.3/hive-client-2.1.1-hdfs-3.0.3-aio.jar)
  **cdh `6.x` compatible**
- [hive-client-1.2.2-hdfs-2.6.5-aio.jar](https://github.com/OpenBigDataPlatform/hive-jdbc-all-in-one/releases/download/hive-client-1.2.2-hdfs-2.6.5/hive-client-1.2.2-hdfs-2.6.5-aio.jar)
  **last `1.x` release**
- [hive-client-1.1.0-hdfs-2.6.5-aio.jar](https://github.com/OpenBigDataPlatform/hive-jdbc-all-in-one/releases/download/hive-client-1.1.0-hdfs-2.6.5/hive-client-1.1.0-hdfs-2.6.5-aio.jar)
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
*Note:* `jdk 1.8` is required to build `hadoop`, and `hive` dependencies.
You must specify the path to a **JDK 1.8** `javac` compiler via `-Dmaven.compiler.executable` if `jdk 1.8` is not your default.

To build one of the provided `pom` files
```bash
mvn package -f hive-client-3.1.1-hdfs-3.1.1.pom
```

### Errors:
- If you get this error it means that you are running maven with JVM > 1.8.
  `jdk.tools` is no longer provided as of `jdk 1.9`.

        Could not resolve dependencies for project org.obdp:hive-client:jar:2.1.1: Could not find artifact jdk.tools

- `[WARNING] Cannot include project artifact: org.obdp:hive-client:jar:2.3.7; it doesn't have an associated file or directory`  
  This is normal - we don't need to build the default jar so we skip it.