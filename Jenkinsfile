node {
    //   stage('clone repo') {
    //       steps {
    //           withCredentials(usernamePassword(credentialsId :jenkins-user-github ,passwordVariable: 'GIT_PASSWORD', usernameVariable: 'GIT_USERNAME' )){
    //           sh """
    //           git config --global credential.username {GIT_USERNAME}
    //           git config --global credential.helper "!echo password={GIT_PASSWORD}; echo"
    //           git clone https://github.com/aakashsehgal/FMU.git
    //           echo "pulled the code"
    //           """
    //           }
    //       },    
      stage('Build with Docker') {
          sh '''
          git clone https://github.com/simone84/assesment.git; cd assesment
          docker build . -t mysql:v1.1
          docker images |grep mysql
          docker run --name mysql -e MYSQL_ROOT_PASSWORD=onetimepsw -d mysql:v1.1
          docker exec -i mysql sh -c 'exec mysql -u root -ponetimepsw' < script.sql
          '''
      }

    }