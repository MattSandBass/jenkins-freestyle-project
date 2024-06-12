#!/bin/bash
echo 'Hello world! I was triggered with a web hook!' | tee jenkins.txt

echo "Hello from the Jenkins job named: ${JOB_NAME}"
touch 1.txt 2.txt 3.txt 4.txt 5.txt
zip archive.zip *.txt
