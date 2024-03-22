rm -rf /tmp/$JAR
mkdir -p /tmp/$JAR

./$JAR.native -text_only -l ./LICENSE/Softcopy -s /tmp/$JAR

RESULT=$?
echo result: $RESULT
