node {
  def node-build-tools

  stage('Clone Repository') {
    checkout scm
  }

  stage('Build Images') {
    sh "docker build -t node10-build-tools -f node10-builder.dockerfile"
  }
}
