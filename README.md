# Build Great Native CLI Apps in Java with Graalvm, Picocli and Maven
This is a maven implementation for [Build Great Native CLI Apps in Java with Graalvm and Picocli](https://www.infoq.com/articles/java-native-cli-graalvm-picocli/)

# How to build
## build a jar with a native binary image (default)
```
$ cd java-native-cli-graalvm-picocli
$ mvn clean install
```
## build a jar without a native binary image
```
$ cd java-native-cli-graalvm-picocli
$ mvn -Dskip=true -Dbuildhelper.skipAttach=true clean install
```
You can get a native binary image ("checksum") under target/ directory.

All your artifacts are also under ${HOME}/.m2/repository/dev/tsuyo/java-native-cli-graalvm-picocli/1.0-SNAPSHOT/