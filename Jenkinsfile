pipeline {
	agent any
	stages {
		stage('Build') {
			steps {
				sh 'ls -la'
				sh 'cd apps/docker_files'
				sh 'docker-compose up'
				
			}
		}
	}
}
