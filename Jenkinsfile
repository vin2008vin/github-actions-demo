def gv
library 'referance-pipeline'
pipeline {
  agent { label 'podman'}
  options {
    buildDiscarder(logRotator(numToKeepStr: '5'))
  }
  tools {
    jdk 'JAVA_11'
    maven 'Maven '3.8.1'
  }

environment {
  RELEASE_VERSION =${RELEASE}
  nexusVersion = "nexus3"
  protocol = "https"
  
} 

stages {
  stage('init') {
    steps {
      gv = load "script.groovy"
    }
  }
}  

  stage('code checkout') {
        steps {
          cleanWs()
          script {
            gv.codeCheckout()
          }
        }
  }

  stage('maven build') {
    steps {
      script {
        gv.mavenBuild()
      }
    }
  }

  
}
