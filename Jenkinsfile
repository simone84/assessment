node {
      stage('clone repo') {
          steps {
              withCredentials(usernamePassword(credentialsId :jenkins-user-github ,passwordVariable: 'GIT_PASSWORD', usernameVariable: 'GIT_USERNAME' )){
              sh """
              git config --global credential.username {GIT_USERNAME}
              git config --global credential.helper "!echo password={GIT_PASSWORD}; echo"
              git clone https://github.com/simone84/assesment.git
              echo "code is here"
              """
              }
          },    
      stage('Build with Docker') {
          sh '''
          cd assesment
          ./build.sh
          '''
      }
}