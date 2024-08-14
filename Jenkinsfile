pipeline {
    agent any
    stages {
        stage('set up Python Virtual ENV')
        {
            sh '''
            chmod +x envsetup.sh
            ./envsetup.sh
            '''
        }
        stage('setup Gunicorn')
        {
            sh '''
            chmod +x gunicorn.sh
            ./gunicorn.sh
            '''
        }
        stage('setup NGINX')
        {
            sh '''
            chmod +x nginx.sh
            ./nginx.sh
            '''
        }       
    }
}