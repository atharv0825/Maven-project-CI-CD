pipeline {
    agent any

    tools {
        maven 'Maven-3'
        jdk 'JDK-17'
    }

    environment {
        TOMCAT_URL = 'http://localhost:8081'
        APP_NAME   = 'JavaApp'
    }

    stages {

        stage('Checkout Code') {
            steps {
                checkout scm
            }
        }

        stage('Build WAR') {
            steps {
                sh 'mvn clean package'
            }
        }

        stage('Deploy to Tomcat') {
            steps {
                deploy adapters: [
                    tomcat9(
                        credentialsId: 'tomcat-jenkins',
                        url: "${TOMCAT_URL}"
                    )
                ],
                contextPath: "${APP_NAME}",
                war: "target/${APP_NAME}.war"
            }
        }
    }

    post {
        success {
            echo "Deployment successful: ${TOMCAT_URL}/${APP_NAME}/"
        }
        failure {
            echo "Deployment failed. Check logs."
        }
    }
}
