pipeline {
  agent any
  stages {
    stage('Build') { steps { sh 'docker build -t vemurigeethika/my app .' } }
    stage('Push') {
      steps {
        sh 'docker login -u vemurigeethika -p yourpassword'
        sh 'docker push vemurigeethika/my app'
      }
    stage('Deploy'){steps{sh 'kubctel apply :K8l'}}
    }
  }
}

    