node{
     
    stage('SCM Checkout'){
        git url: 'https://github.com/roopa99/java-web-app-docker.git',branch: 'master'
    }
    
    stage(" Maven Clean Package"){
         withMaven(jdk: 'JAVA_HOME', maven: 'MAVEN_HOME'){
         sh "mvn claen package"
         }
    } 
    
    
    stage('Build Docker Image'){
        sh 'docker build -t roopa45/java-web-app.'
    }
    
    stage('Push Docker Image'){
        wwithCredentials([usernameColonPassword(credentialsId: 'dockerhubroopa', variable: 'dockerhub')]) {
        sh 'docker push roopa45/java-web-app.'
     }
     
      stage('Run Docker Image In Dev Server'){
        
        def dockerRun = ' docker run  -d -p 8080:8080 --name java-web-app dockerhandson/java-web-app'
         
         sshagent(['DOCKER_SERVER']) {
          sh 'ssh -o StrictHostKeyChecking=no ubuntu@172.31.20.72 docker stop java-web-app || true'
          sh 'ssh  ubuntu@172.31.20.72 docker rm java-web-app || true'
          sh 'ssh  ubuntu@172.31.20.72 docker rmi -f  $(docker images -q) || true'
          sh "ssh  ubuntu@172.31.20.72 ${dockerRun}"
       }
       
    }
     
     
}
}
