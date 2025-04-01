# After the cluster installation u run the below cmd
eksctl get cluster

NAME            REGION          EKSCTL CREATED
eks-cluster-102 us-west-2       True

# next you update the cluster config 
## To update kubernetes config file

aws eks update-kubeconfig --name eks-cluster-100

Added new context arn:aws:eks:us-east-2:8517200000:cluster/eks-cluster-100 to /home/ubuntu/.kube/config
## create a deployment and service.yaml fike
vi deployment.yaml
vi service.yaml
then tou apply them

kubectl -f deployment.yaml
kubectl -f service.yaml

if u get this

kubectl apply -f deploy.yaml
deployment.apps/my-deployment created

## you run the below command to check if the pods is running

kubectl get pods (the two pods be runnin)

## you should be seeing this

kubectl get pods
NAME                             READY   STATUS    RESTARTS   AGE
my-deployment-5fdc4ddcb5-4zsnf   1/1     Running   0          8m5s
my-deployment-5fdc4ddcb5-q6m98   1/1     Running   0          8m5s

## Next u run 

vi service.yaml
## You save and apply
kubectl apply -f service.yaml
service/my-service created

kubectl get service (it will bring out the loadbalancer copy the dns and take it to the browser)
NAME         TYPE           CLUSTER-IP      EXTERNAL-IP                                                             PORT(S)        AGE
kubernetes   ClusterIP      10.100.0.1      <none>                                                                  443/TCP        50m
my-service   LoadBalancer   10.100.131.36   adb466189ff92499aa1233f0xxxxxxxx-51691701.us-west-2.elb.amazonaws.com   80:31199/TCP   7m29s

## since it has no external ip u disply the below on your browser
adb466189ff92499aa1233f0xxxxxxxx-51691701.us-west-2.elb.amazonaws.com 


## Delete EKS cluster

eksctl delete cluster --name eks-cluster-201 --region eu-west-2

##or 

eksctl delete cluster --region=eu-west-2 --name=eks-cluster-201