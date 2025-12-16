pipeline {
    agent any
    stages {
        stage('Checkout') {
            steps {
                // Cloner ton dépôt GitHub
                git branch: 'main', url: 'https://github.com/soundousnidar/TPJavaPipeLine-NidarSoundous.git'
            }
        }

        stage('Build') {
            steps {
                // Build Maven directement
                dir('java-maven') {
                    bat 'mvn clean test package'
                }
            }
        }
    }
}
