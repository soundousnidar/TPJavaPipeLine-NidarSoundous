pipeline {
    agent {
        docker {
            image 'my-maven-git:latest'
            args '-v $HOME/.m2:/root/.m2'
        }
    }

    stages {
        stage('Checkout') {
            steps {
                sh 'rm -rf *'
                sh 'git clone https://github.com/soundousnidar/TPJavaPipeLine-NomPrenom.git'
            }
        }

        stage('Build') {
            steps {
                dir('TPJavaPipeLine-NidarSoundous/java-maven') {
                    sh 'mvn clean test package'
                }
            }
        }
    }
}
