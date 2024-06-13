pipeline{
    agent any
    stages {
        stage ('clean') {
            steps {
                echo "running clean up ...."
                cleanWs()
                git url: 'https://github.com/MattSandBass/jenkins-freestyle-project', branch: 'main'
            }
        }

        stage ('Run script')
        {
            steps {
                echo "running Run script ...."
                sh "sh run.sh"
            }
        }
        stage ("Generate artifacts"){
            steps {
                echo "running generate artifacts ...."
                sh '''
                #!/bin/bash
                for i in {1..5}; do echo "This is file \$i" > file\$i.txt; done
                '''
            }
        }
    }
    post {
        always {
            archiveArtifacts artifacts: '*.txt', followSymlinks: false
        }
    }
}