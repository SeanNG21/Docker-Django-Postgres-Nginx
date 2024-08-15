pipeline {
    agent any
    stages {
        stage('set up Python Virtual ENV')
        {
            steps {
                sh '''
                #!/bin/bash
                chmod +x envsetup.sh
                ./envsetup.sh
                '''
            }
            
        }
        stage('setup Gunicorn')
        {
            steps {
                sh '''
                #!/bin/bash
                chmod +x gunicorn.sh
                ./gunicorn.sh
                '''
            }
        }
        stage('setup NGINX')
        {
            steps {
                sh '''
                #!/bin/bash
                chmod +x nginx.sh
                ./nginx.sh
                '''
            }
        }       
    }
}