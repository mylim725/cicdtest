//It was created by the Devops portal.

node {
	//APP 관련 설정
	NAME='asdasd'
	JAR_NAME=NAME + '.jar'
	
	//GitLab
	GIT_URL='http://34.64.83.102:8086/root/shopping_project.git'
	GIT_BRANCH=params.branchName
	GIT_CREDENTIALS_ID='root'
	
	//Build 관련 설정
	PROJECT_HOME='.'
	BUILDER_LOCATION='./maven'
	
	//Docker 관련 설정
	LOCAL_REGISTRY='https://hub.docker.com/repository/docker/asdlkjfhg'
	INSTALL_PATH='/app'
	
	echo 'Branch Name: ' + GIT_BRANCH
	
	stage('checkout') {
		echo 'checkout'
		sh 'rm -fr ./*'
		git url: GIT_URL, branch: GIT_BRANCH, credentialsId: GIT_CREDENTIALS_ID
	}
	
	stage('build') {
		echo 'Build'
		sh 'chmod +x ' + BUILDER_LOCATION
		sh BUILDER_LOCATION + ' clean build -b ' + PROJECT_HOME + '/build.maven -x test'
	}
	
	stage("docker build") {
		echo "Docker build"
		sh 'cp ' + PROJECT_HOME + '/build/libs/' + JAR_NAME + ' ' + PROJECT_HOME + '/docker'
		def image = docker.build(LOCAL_REGISTRY + "/" + NAME.toLowerCase() + ":${env.BUILD_ID}", "./docker")
		sh 'rm ' + PROJECT_HOME + '/docker/' + JAR_NAME
		image.push()
		sh 'docker rmi -f ' + LOCAL_REGISTRY + '/' + NAME.toLowerCase() + ":${env.BUILD_ID}"
	}
}
