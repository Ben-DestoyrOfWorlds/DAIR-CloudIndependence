pipeline {
	agent any
	stages {
		stage('Build') {
			steps {
				sh 'ls -la'
				sh 'cd apps/docker_files && bash -c "/usr/local/bin/docker-compose up >> ~/log 2>&1" &'
                                sh 'sleep 30'
                                sh 'curl http://127.0.0.1/polls/'
			}
		}
	}
}
