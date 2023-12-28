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
                echo 'Construcción de imagen Docker...'
                // Aquí puedes agregar comandos para ejecutar pruebas si las tienes
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
                echo 'Desplegando...'
                // Aquí puedes agregar comandos para ejecutar pruebas si las tienes
            }
        }
    }

    post {
        success {
            echo '¡Pipeline ejecutado exitosamente!'
        }
    }
}
