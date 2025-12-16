pipeline {
    // Utilise n'importe quel agent Jenkins disponible
    agent any

    stages {
        stage('Checkout') {
            steps {
                // Nettoyer le workspace avant le checkout
                bat "rmdir /s /q *"
                // Cloner le dépôt Git
                bat "git clone https://github.com/simoks/java-maven.git"
            }
        }

        stage('Build') {
            steps {
                script {
                    def currentDir = pwd()
                    echo "Current directory: ${currentDir}"
                    // Aller dans le dossier contenant le projet Maven
                    dir('java-maven/maven') {
                        // Lancer Maven
                        bat 'mvn clean test package'
                        // Exécuter le jar généré
                        bat 'java -jar target/maven-0.0.1-SNAPSHOT.jar'
                    }
                }
            }
        }
    }
}
