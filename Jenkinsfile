pipeline {
  agent any
  stages {
    stage('Build'){steps{sh 'docker build -t vemurigeethika/my-app .'}}
    stage('Push'){steps{sh 'docker login -u vemurigeethika -p $DOCKER_PASS'; sh 'docker push vemurigeethika/my-app'}}
    stage('Deploy'){steps{sh 'kubectl apply -f k8s.yml'}}
  }
}
