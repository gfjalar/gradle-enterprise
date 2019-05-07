# Gradle Enterprise for Maven

This repo shows 2 kinds of set ups we tried with Gradle Enterprise for maven.

# Faulty Setup

| Directory | Command | Is Build Scan sent? |
|---|---|---|
| / | bin/entrypoint.sh clean compile -Dscan | Yes |
| / | bin/entrypoint.sh clean compile | No |
| / | ./mvnw clean compile -Dscan | Yes |
| / | ./mvnw clean compile | No |
| / | mvn clean compile -Dscan | Yes |
| / | mvn clean compile | No |
| /module-one | ../bin/entrypoint.sh clean compile -Dscan | Yes |
| /module-one | ../bin/entrypoint.sh clean compile | No |
| /module-one | ../mvnw clean compile -Dscan | Yes |
| /module-one | ../mvnw clean compile | **Yes** |
| /module-one | mvn clean compile -Dscan | Yes |
| /module-one | mvn clean compile | **Yes** |
