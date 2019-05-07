# Gradle Enterprise for Maven

This repo shows 2 kinds of set ups we tried with Gradle Enterprise for maven.

# Faulty Setup


| Directory | Command | Is Build Scan sent? |
|---|---|---|
| / | USE_GRADLE_ENTERPRISE=true bin/entrypoint.sh clean compile | Yes |
| / | bin/entrypoint.sh clean compile | No |
| / | ./mvnw clean compile -Dgradle.user.config=gradle/gradle-enterprise.xml -Dmaven.ext.class.path=gradle/gradle-enterprise-maven-extension-1.0.8.jar -Dscan | Yes |
| / | ./mvnw clean compile | No |
| / | mvn clean compile -Dgradle.user.config=gradle/gradle-enterprise.xml -Dmaven.ext.class.path=gradle/gradle-enterprise-maven-extension-1.0.8.jar -Dscan | Yes |
| / | mvn clean compile | No |
| /module-one | USE_GRADLE_ENTERPRISE=true ../bin/entrypoint.sh clean compile | Yes |
| /module-one | ../bin/entrypoint.sh clean compile | No |
| /module-one | ../mvnw clean compile -Dgradle.user.config=gradle/gradle-enterprise.xml -Dmaven.ext.class.path=gradle/gradle-enterprise-maven-extension-1.0.8.jar -Dscan | Yes |
| /module-one | ../mvnw clean compile | No |
| /module-one | mvn clean compile -Dgradle.user.config=gradle/gradle-enterprise.xml -Dmaven.ext.class.path=gradle/gradle-enterprise-maven-extension-1.0.8.jar -Dscan | Yes |
| /module-one | mvn clean compile | No |
