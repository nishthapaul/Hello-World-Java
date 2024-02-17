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
                    sh 'docker login -u $DOCKERHUB_USERNAME -p $DOCKERHUB_CREDENTIALS'
                    sh 'docker push nishthapaul/hello-world-jenkin-project'
                    }
                }
          }
    }
}
