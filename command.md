Conversation opened. 1 read message.

Skip to content
Using Gmail with screen readers
28 of 2,924
Take home assignment project : python-terraform-jenkins-pipeline
Inbox

Ayenco Scolfield
13 Mar 2025, 09:01 (3 days ago)
to PREYE, me

You are the  cloud engr for your company,carry out the following tasks:

1. Go to GitHub and create a project call it python-docker,clone and take it to ur project directory on ur local machine
2. cd to the project 
3.i.create a folder called templates 
Add necessary html files inside it 
ii.create a file call it app.py
Inside the file import flask  ,follow and copy what we did in previous software-development project 
iii Allow port 5007
iv.create requirements.txt and flask 
v.Run the application to check if it's working

4. Now we move to dockerise the application.:
Create a file call it  dockerfile 
Inside the file add commands to dockerise your image( pls look at how dockerfile is for last project copy and use like that,make sure you change the port to 5007

5. Create .dockerignore and .gitignore files and add the necessary files 

6 .cicd process 

Now create another folder in this same project directory call it infra add all the necessary files to install an ec2 instance of T2 .small,create Vpc, security-group, S3 bucket backend  configuration and other necessary components using terraform. You must install Jenkins on this machine with docker 

authenticate yourself with aws
install aws cli
aws configure
aws sts-get-caller-identity
aws s3 ls
terraform init
terraform fmt
 terraform validate
terraform plan

terraform apply --auto-approve

 run your public ip on your browser e.g 
 on a new termunal go to Downloads
 ssh the public ip on aws and run it on vscode
 on the machine install java, jenkins, docker
 below are the scripts
 sudo cat /var/lib/jenkins/secrets/initialAdminPassword
 paste the password on jenkins browser



  terraform destroy    

  
7. Make sure u are the in the infra folder directory and run all the necessary terraform commands. 
go back to your project directory and push to github running the below commands

git status
git add .
git commit -m "files"
git push


8.Configure the Jenkins ,download docker plugins and dockerhub credentials,just make sure is ready for cicd process

jenkins - manage jenkins - plugins - docker pipeline-git server then click on install

manage jenkins- credentials- global - system - global credentials(unrestricted) - new credentials
kind - secret text -scope - secret(dockerhub pw) -ID - create

new items - pipeline - ok 
description - pipeline - pipline scrit from scm -scm - git - repository url- branch - main - script path - jenkinsfile - save


Build now


pipeline syntax (note u use the when ure using kind - secret text not kind - username and password) 
withcredentials -bind credentials to variables - bindings - add - secret text - variable name (e.g dockerID)
credentials - add - jenkins - global cred - kind- secret text - secret - docker pw - ID - dockerID - ADD

note since uve added ur credentials earlier u dont need to undergo d process so after d variable name go ahead and click on

GENERATE PIPELINE SCRIPT
THIS is what u copy and paste on d dockerpush stage in d jenkinsfile

scroll to with credentials
9.create your pipeline s rip call it Jenkinsfile 
Now inside your pipeline create all neccessary stages
Git checkout 
Build docker image stage 
Push to dockerhub stage

Finally confirm if the container  app docker image is there in dockerhub

create another file Jenkinsfile



N/b: we shall add the  aws-eks kubernetes deployment in the second half of this project 



