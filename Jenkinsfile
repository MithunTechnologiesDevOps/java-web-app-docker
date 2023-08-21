pipeline {
    agent any

    tools {
        maven "Maven-3.9.4"
    }

    stages {
        stage('checkout ') {
            steps {
               checkout scmGit(branches: [[name: '*/master']], extensions: [], userRemoteConfigs: [[credentialsId: 'github', url: 'https://github.com/udays111/java-web-app-docker.git']])
            }
                
        }
         stage('build maven ') {
            steps {
                bat 'mvn clean package'
            }
        }
        stage('upload artifacts nexus ') {
            steps {
               
    }
}
