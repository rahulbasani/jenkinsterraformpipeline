pipeline{
    agent any
    stages{
        stage('build'){
            steps{
                echo 'initializing terraform ';
                sh 'terraform init'
            }
        }
        stage('test'){
            steps{
                echo 'checking for wrong plans';
                sh 'terraform plan'
            }
        }
        stage('deploy'){
            steps{
                echo 'implementing the palns';
                sh 'terraform apply --auto-approve'
            }
        }
        stage('destroy'){
            steps{
                echo 'cleaning up......';
                sh 'terraform destroy --auto-approve'
                }
        }
    }
}
