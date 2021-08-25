pipeline {
    agent any
    enivoment {
        install = 'true'
    }
    stages{
        stage('Install Requirements') {
            steps {
                script{
                    if (env.install == 'true'){
                        sh 'bash scripts/install-requirements.sh'
                    }
                }
            }
        }
    }
    stages {
        stage('Build') {
            steps {
                //
            }
        }
        stage('Test') {
            steps {
                //
            }
        }
        stage('Deploy') {
            steps {
                //
            }
        }
    }
}