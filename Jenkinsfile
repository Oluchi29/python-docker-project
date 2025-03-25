pipeline{
    agent any
    stages{
        stage("Github checkout") {
            steps {
                script {

                    git branch: 'main', url: 'https://github.com/oluchi29/nod-jenkins.git'
                }
            }
        }
        stage("Build docker image") {
            steps{
                sh 'printenv'
                sh 'git version'
                sh 'dcocker build . -t luchi1985/imag4.0'
            }
        }
        stage("Push image to Dockerhub") {
            steps {

                scripts {

                  withCredentials([string(credentialsId: 'dockerID', variable: 'dockerID')]) {
                    sh 'docker login -u luchi1985 -p ${dockerID}'   
                }
                sh 'docker push luchi1985/imag3.0:latest'
            }
        }
    }
}


