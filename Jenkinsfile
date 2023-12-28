pipeline {
    agent any

    stages {
        stage('Preparación') {
            steps {
                echo 'Iniciando CI/CD...'
            }
        }

        stage('Construcción de la imagen Docker') {
            steps {
                script {
                    // Construye la imagen Docker
                    sh 'docker build -t mi-aplicacion-node .'
                }
            }
        }

        stage('Pruebas') {
            steps {
                echo 'Ejecutando pruebas...'
                // Aquí puedes agregar comandos para ejecutar pruebas si las tienes
            }
        }

        stage('Despliegue') {
            steps {
                script {
                    // Ejemplo de despliegue en un contenedor local
                    sh 'docker run -d -p 3001:3000 mi-aplicacion-node'
                }
            }
        }
    }

    post {
        success {
            echo '¡Pipeline ejecutado exitosamente!'
        }
    }
}
