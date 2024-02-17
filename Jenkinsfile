pipeline {
    agent any
    environment {
        DOCKERHUB_CREDENTIALS=credentials('dockerhub')
        DOCKERHUB_USERNAME='nishthapaul'
    }
    stages {
          stage ("One") {
                steps {
                    echo 'Hi it is the first step !!!'
                } 
          }

          stage ("Clone Git") {
                steps {
                    git branch: 'main', url: 'https://github.com/nishthapaul/Hello-World-Jenkinss.git'
                }
          }
        
          stage ("Build & Run Code") {
                steps {
                    sh 'docker build -t nishthapaul/hello-world-jenkin-project .'
                }
          }

          stage ("Push docker image") {
                steps {
                    script {
                    sh 'docker login -u $DOCKERHUB_USERNAME -p $DOCKERHUB_CREDENTIALS'
                    sh 'docker push nishthapaul/hello-world-jenkin-project'
                    }
                }
          }
        
          stage ("Run Ansible Playbook") {
                steps {
                    sh 'ansible-playbook -i inventory deploy.yml'
                }
          }
    }
    post {
        failure {
            emailext (
                to: 'paulnishtha19@gmail.com',
                subject: "Pipeline Failed: ${currentBuild.fullDisplayName}",
                body: "The Jenkins pipeline ${currentBuild.fullDisplayName} has failed. Please investigate.",
            )
        }
    }
}
