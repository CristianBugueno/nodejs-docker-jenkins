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
                    // Comandos SSH para ejecutar en el servidor remoto con archivo .pem
                    sshagent(credentials: ['server docker']) {
                        // Reemplaza 'usuario@servidor' con tu usuario y dirección IP o nombre del servidor SSH
                        sh 'ssh -i /home/lab-cristian2023.pem ubuntu@54.91.37.71 "docker run -d -p 3001:3000 mi-aplicacion-node"'
                    }
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
