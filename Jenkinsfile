pipeline {
    options {
            disableConcurrentBuilds()
        }
    agent any
        tools {
            maven 'Maven3'
        }
    stages {
        stage('BUILD'){
            steps{
                git 'https://github.com/v1llaDEV/zuul-gateway.git'
                sh 'mvn clean package -Dmaven.test.skip'

            }
        }
        stage('DOCKERIZE'){
            steps{
                echo 'clean old containers'
                sh 'docker rm zuul-gateway --force'
                echo 'clean old images'
                sh 'docker rmi zuul-gateway --force'
                echo 'Build image'
                sh 'docker build . -t zuul-gateway'
            }
        }

        stage('DEPLOY'){
            steps{
                 echo 'Deploying'
                  sh 'docker run -p 8100:8100 -d --name zuul-gateway --network tomcat-mysql-network zuul-gateway'
            }
        }
    }
}