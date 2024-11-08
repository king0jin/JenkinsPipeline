pipeline {
    agent any
    stages {
        stage("Checkout") {
            steps {
                git url: 'https://github.com/king0jin/JenkinsPipeline.git', branch: 'main'
            }
        }
        stage("Permission"){
           steps{
               sh "chmod +x ./gradlew"
           }
       }
       stage("Compile"){
           steps{
               sh "./gradlew compileJava"
           }
       }
       stage("Test"){
           steps{
               sh "./gradlew test"
           }
       }
       stage("Code Coverage"){
           steps{
               sh "./gradlew jacocoTestCoverageVerification"
               sh "./gradlew jacocoTestReport"
           }
       }
       stage("Docker Build"){
           steps{
               sh "docker build -t jenkinspipeline ."
           }
       }
    }
}