#!/bin/bash

cd "$(dirname "${BASH_SOURCE[0]}")/.."

GRADLE_ENTERPRISE_OPTIONS=""

if [ "$(echo $USE_GRADLE_ENTERPRISE | tr '[:upper:]' '[:lower:]')" == "true" ]; then
  GRADLE_ENTERPRISE_OPTIONS="-Dscan -Dgradle.user.config=gradle/gradle-enterprise.xml -Dmaven.ext.class.path=gradle/gradle-enterprise-maven-extension-1.0.8.jar -Dscan.tag.LOCAL -Dscan.tag.MAVEN -Dscan.value.Custom=Value"
fi

./mvnw $@ $GRADLE_ENTERPRISE_OPTIONS
