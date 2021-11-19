#! /bin/bash
echo "************************"
echo "** Testing Jar ***"
echo "************************"
WORKSPACE=/home/ec2-user/jenkins/jenkins_data/workspace/Pipeline-Maven

docker run --rm -v $WORKSPACE/java-app:/app -v /root/.m2/:/root/.m2/ -w /app maven:3.6-alpine "$@"
