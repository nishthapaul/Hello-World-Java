pipeline {
    agent any
    environment {
        DOCKERHUB_CREDENTIALS=credentials('af18b7a2-8b62-4576-8bdb-67287f557f5e')
    }
    stages {
          stage ("One") {
                steps {
                    echo 'Hi it is the first step !!!'
                } 
          }

          stage ("Clone Git") {
                steps {
                    git branch: 'main', url: 'https://github.com/nishthapaul/Hello-World-Jenkins.git'
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
                    sh 'docker login -u nishthapaul -p $DOCKERHUB_CREDENTIALS'
                    sh 'docker push nishthapaul/hello-world-jenkin-project'
                    }
                }
          }
    }
}
