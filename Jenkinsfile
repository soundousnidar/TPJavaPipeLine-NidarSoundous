pipeline {
    agent any
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
