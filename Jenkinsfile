pipeline {
    agent {
        docker { image 'maven:3.9.6-openjdk11' }
    }
    stages {
        stage('Checkout') {
            steps {
                git branch: 'main', url: 'https://github.com/soundousnidar/TPJavaPipeLine-NidarSoundous.git'
            }
        }

        stage('Build') {
            steps {
                dir('java-maven') {
                    sh 'mvn clean test package'
                }
            }
        }
    }
}
