node {
 stage('Initialize'){
        def dockerHome = tool 'docker-test'
        env.PATH = "${dockerHome}/bin:${env.PATH}"
 }
 stage('========== Clone repository ==========') {
  checkout scm
 }
 stage('test') {
	steps {
		sh 'service docker start'
		sh 'systemctl start docker'
	}
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
