node {
 stage('========== Clone repository ==========') {
  checkout scm
 }
 stage('========== Build image ==========') {
  app = docker.build("asdlkjfhg/testbuild")
 }
 stage('========== Push image ==========') {
  docker.withRegistry('https://hub.docker.com/repositories/asdlkjfhg', 'asdlkjfhg') {
   app.push("${env.BUILD_NUMBER}")
   app.push("latest")
  }
 }
}
