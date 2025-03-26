# python-docker-project
A project to deploy jenkins and docker on an ec2 instance in aws

problems encountered when running my terraform validate it did not validate because there was a typo error in the main.tf instead of instance type i typed tnstant type. which made terraform to keep throwing error.


SOLUTION
on vscode ssh to your ec2 instance jenkins server and run the following commands

newgrp docker

 #is used to grant full read, write, and execute permissions to all users for the Docker socket file, which allows unrestricted access to the Docker daemon # and is a significant security risk.

sudo chmod 777 /var/run/docker.sock    

error encountered the pipeline error failed from d first stage cos d branch was in master instead of main

Third error docker push pulled an error first on the jenkins setup my kind in credentials was of username and password whole my jenkinsfile said with credentials secret
so i had to go and update my credentials to type secret text and also used my pipeleine syntax to generate my withcredentials

final error my docker password was incorect to be sure of the right password i went to my local machine and on the project directory ran my docker login once it showed login sucessfull i used the same password in my secret text password by going back to jenkins clicked on configure and credential update.

voila my pipeline was sucessfully built and pushed to dockerhub after four failed build
