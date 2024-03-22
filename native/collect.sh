rm -rf /tmp/$JAR
mkdir -p /tmp/$JAR

JAVA_HOME=$HOME/prg/graalvm-ce-java11-22.2.0/
$JAVA_HOME/bin/java -agentlib:native-image-agent=config-output-dir=src/test/resources/config -jar $JAR  -text_only -l ./LICENSE/Softcopy -s /tmp/$JAR

yq -i -P -o json '.bundles += {"name":"sun.util.resources.LocaleNames"}' ./src/test/resources/config/resource-config.json