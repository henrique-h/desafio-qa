node(){
    stage('Download codigo git'){
        checkout(scm)
    }

    stage('Container'){
        sh """
        docker build -t desafio-qa
        docker run --rm -v "$WORKSPACE/cucumber":/usr/src/app -w /user/src/app -i desafio-qa cucumber
        """
    }
}

