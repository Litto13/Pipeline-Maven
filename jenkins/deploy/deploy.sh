#! /bin/bash

echo maven-project > /tmp/.auth
echo $BUILD_TAG >> /tmp/.auth
echo $PASS >> /tmp/.auth
scp -i /opt/deploy /tmp/.auth ec2-user@ec2-13-233-103-31.ap-south-1.compute.amazonaws.com:/tmp/.auth
scp -i /opt/deploy ./jenkins/deploy/publish ec2-user@ec2-13-233-103-31.ap-south-1.compute.amazonaws.com:/tmp/publish
ssh -i /opt/deploy ec2-user@ec2-13-233-103-31.ap-south-1.compute.amazonaws.com "/tmp/publish"
