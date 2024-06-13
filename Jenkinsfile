pipeline{
    agent any
    stages {
        stage ('clean'){
            steps{
              cleanWs()
              git url: 'https://github.com/MattSandBass/jenkins-freestyle-project.git', brand: 'main'
            }
        }
        stage ('Run script')
        {
            steps {
                sh "sh run.sh"
            }
        }
        stage ("Generate artifacts"){
            steps {
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