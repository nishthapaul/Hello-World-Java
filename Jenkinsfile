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
                    git 'https://github.com/nishthapaul/Hello-World-Jenkins.git'
                }
          }

          stage ("Build & Run Code") {
                steps {
                    sh "chmod u+x calculator.sh"
                    sh "./calculator.sh 1 2 1"
                }
          }
    }
}
