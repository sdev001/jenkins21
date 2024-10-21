pipeline {
    agent any 
    stages {
       stage('Git checkout') 
       {
           steps {
                script {
                    git branch: 'main',
                    url: 'https://github.com/sdev001/bahnde.git'
                }
           }
        }
        stage ('run tests')
        {
            steps {
                sh 'mvn clean validate'
            }
        }
    }
    
}
