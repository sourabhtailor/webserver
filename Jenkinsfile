pipeline {
    agent any
    parameters {
        string(name: 'VERSION', description: 'version to deploy' )
    }
    stages {
        stage('build') {
            steps {
                echo 'building the pipeline'
            }
        }
        stage ('test') {
            steps {
                echo 'Running tests'
            }
        } 
        stage ('Approve') {
            steps {
                input message : "Deploy ${params.VERSION} to GOV?", ok: 'deploy'
            }
        }
        stage('Deploy') {
            steps {
                echo 'Deploying to production'
            }
        }
    }
}
