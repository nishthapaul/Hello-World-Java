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
                    git 'https://github.com/nishthapaul/Hello-World-Java.git'
                }
          }

          stage ("Build Code") {
                steps {
                    sh "chmod u+x calculator.sh"
                    sh "./calculator.sh"
                }
          }
    }
}
