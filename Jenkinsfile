pipeline {
    agent any
    stages {
        stage('Rate') {
            steps {
                sh "chmod +x rate.sh"
                sh "./rate.sh"
                archiveArtifacts artifacts: 'rate.txt', followSymlinks: false
            }
        }
    }
}
