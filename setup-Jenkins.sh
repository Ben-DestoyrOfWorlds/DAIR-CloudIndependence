#!/bin/bash
INITPASS='nananaa'
TESTPASS='goodbye'
sudo apt-get update
sudo apt-get install docker.io
sudo docker run -d -v jenkins_home:/var/jenkins_home -v /var/run/docker.sock:/var/run/docker.sock --name jenkins -p 80:8080 -p 50000:50000 jenkins/jenkins:lts
sleep 15
echo "Initial Admin Password below"
INITPASS=`sudo cat /var/lib/docker/volumes/jenkins_home/_data/secrets/initialAdminPassword`
echo $INITPASS
while :
do
	TESTPASS=`sudo cat /var/lib/docker/volumes/jenkins_home/_data/secrets/initialAdminPassword`
	if [ "$TESTPASS" != "$INITPASS" ]; then
		echo $TESTPASS
		break
	fi
done
sleep 5
sudo docker restart jenkins
