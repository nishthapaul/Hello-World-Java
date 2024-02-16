pipeline {
    agent any
    stages {
          stage ("One") {
                steps {
                    echo "Hi it is the first step !!!"
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
                    sh "docker login -u nishthapaul -p paulpaul19"
                    sh "docker push nishthapaul/hello-world-jenkin-project"
                    }
                }
          }
    }
}
