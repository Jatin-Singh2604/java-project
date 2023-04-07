pipeline {
    agent any

       stages {
           
        stage('Clean the workspace-begining') {
           steps{
               sh "rm -rf *"
           }
        }
        
        stage('Pull From SCM') {
            steps {
                
               checkout changelog: false, poll: false, scm: scmGit(branches: [[name: '*/master']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/jatin2604/java-project.git']])

                }
                        }
        stage('Build The Code') {
            steps {
                
                sh "mvn clean install" 

                }
                                }
        stage('build the Docker image') {
            steps {
                
                sh "docker build -t jatinsingh2604/javaproject:1 ."
               
                }
                    }
        stage('clean the Docker image') {
            steps {
                echo "list the docker images"
                sh "docker images"
                sh "docker rmi -f jatinsingh2604/javaproject:1"
                echo "list the docker images"
                sh "docker images"
               
                }
                    }
                  
        stage("Clean the workspace-End") {
           steps{
               sh "rm -rf *"
           }
        }
                
            }
            
            }
        
