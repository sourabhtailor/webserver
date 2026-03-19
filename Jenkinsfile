pipeline {
    agent any
    stages {
      stage('build') {
         steps {
             echo 'building the pipeline'
     }
  }
     stage('git info') {
         steps {
            script {
               def commit = sh(script: "git rev-parse HEAD", returnStdout: true).trim()
               def author = sh(script: "git log -1 --pretty=format:'%an'", retunrStdout: true).trim()
               def message = sh(script: "git log -1 --pretty=format:'%s'", retunrStout: true).trim() 
	       echo "commit: $(commit)"
	       echo "author: $(author)"
	       echo "message: $(message)"
 	}
    }
}
     stage('list the files') {
        steps {
       	   sh ('ls -la')
	}
    }
 }
}
