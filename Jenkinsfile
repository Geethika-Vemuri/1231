pipeline {
  agent any
  stages {
    stage('Build'){steps{bat 'docker build -t vemurigeethika/my-app .'}}
    stage('Push'){steps{withCredentials([string(credentialsId:'dockerhub-creds',variable:'DOCKER_PASS')]){bat 'echo %DOCKER_PASS%|docker login -u vemurigeethika --p Vgeethika@1231';bat 'docker push vemurigeethika/my-app'}}}
    stage('Deploy'){steps{bat 'kubectl apply -f k8s.yml'}}
  }
}

