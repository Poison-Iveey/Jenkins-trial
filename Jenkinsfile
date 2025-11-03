pipeline {
  agent any
  parameters {
    string(name: 'FIRST_NAME', defaultValue: 'John', description: '')
    string(name: 'LAST_NAME', defaultValue: 'Doe', description: '')
    string(name: 'SOMETHING', defaultValue: 'a DevOps student', description: '')
    choice(name: 'ENVIRONMENT', choices: ['dev','staging','prod'], description: '')
    booleanParam(name: 'RUN_TESTS', defaultValue: false, description: '')
  }
  stages {
    stage('Checkout') { steps { checkout scm } }
    stage('Run script') {
      steps {
        sh '''
          chmod +x fullname.sh
          ./fullname.sh "$FIRST_NAME" "$LAST_NAME" "$SOMETHING" "$ENVIRONMENT" "$RUN_TESTS"
        '''
      }
    }
    stage('Archive') {
      steps { archiveArtifacts artifacts: 'build_out/**', fingerprint: true }
    }
  }
}
