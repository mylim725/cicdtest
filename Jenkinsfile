node {
 stage('========== Clone repository ==========') {
  checkout scm
 }
 stage('========== Build image ==========') {
  app = docker.build("asdlkjfhg/testbuild")
 }
 stage('========== Push image ==========') {
  docker.withRegistry('', 'docker-hub') {
   app.push("${env.BUILD_NUMBER}")
   app.push("latest")
  }
 }
}
