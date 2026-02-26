
pipeline {

  agent any

  environment {

    AWS_DEFAULT_REGION = "us-east-1"
    ANSIBLE_HOST_KEY_CHECKING = "False"

  }

  stages {

    stage('Checkout Code') {

      steps {

        git branch: 'main',
            url: 'https://github.com/syedvasiullah05-png/terraform.git'

      }

    }


    stage('Terraform Init & Apply') {

      steps {

        withCredentials([[
          $class: 'AmazonWebServicesCredentialsBinding',
          credentialsId: 'aws-cred'
        ]]) {

          sh '''
            cd terraform
            terraform --version
            terraform init
            terraform apply -auto-approve
          '''

        }

      }

    }


    stage('Run Ansible Playbooks') {

      steps {

        sshagent(credentials: ['ssh]) {

          sh '''
            cd ansible
            ansible --version
            ansible-playbook -i inventory.ini linux.yml
            ansible-playbook -i inventory.ini backend.yml
            ansible-playbook -i inventory.ini frontend.yml
          '''

        }

      }

    }

  }


  post {

    success {

      echo "Deployment completed successfully"

    }

    failure {

      echo "Deployment failed"

    }

  }

}
