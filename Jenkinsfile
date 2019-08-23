pipeline{
    agent{
        docker{
            image 'ruby'
            args '--link selenium-server'
        }
    }
    stages{
        stage('Preparation'){
            steps{
                sh "bundle install"
            }
        }
        stage('Run Test'){
            steps{
                sh "bundle exec cucumber -p ci -t @temp"
            }
        }
    }
}