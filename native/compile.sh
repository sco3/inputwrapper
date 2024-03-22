JAVA_HOME=$HOME/prg/graalvm-ce-java11-22.2.0/
$JAVA_HOME/bin/native-image --no-fallback -Djava.awt.headless=true \
 -H:ConfigurationFileDirectories=./src/test/resources/config \
 -H:ResourceConfigurationFiles=./src/test/resources/config/resource-config.json \
 -jar $JAR $JAR.native
