pipeline {
    agent any

    tools {
        maven 'maven'
        jdk 'jdk17'
    }

    environment {
        TOMCAT_URL = 'http://localhost:8081'
        APP_NAME   = 'JavaApp'
    }

    stages {

        stage('Checkout') {
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
                withCredentials([
                    usernamePassword(
                        credentialsId: 'tomcat-jenkins',
                        usernameVariable: 'TC_USER',
                        passwordVariable: 'TC_PASS'
                    )
                ]) {
                    sh """
                    curl -u $TC_USER:$TC_PASS \
                         -T target/${APP_NAME}.war \
                         ${TOMCAT_URL}/manager/text/deploy?path=/${APP_NAME}&update=true
                    """
                }
            }
        }
    }

    post {
        success {
            echo "Deployment successful: ${TOMCAT_URL}/${APP_NAME}/"
        }
        failure {
            echo "Deployment failed"
        }
    }
}
