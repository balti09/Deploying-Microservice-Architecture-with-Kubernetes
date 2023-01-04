# Project: Deploying-Microservice-Architecture-with-Kubernetes

In this project i deploy a microservice application using Kubernetes, AWS ec2 instances and Kubeadm.

## Pre-requisites  
AWS Account
DockerHub account  


## Microservice Application Architucture:  
![architecture](https://user-images.githubusercontent.com/72893228/210557254-ce0a5f35-92ff-4132-ae86-d35a224d17bb.png)


## Step 1 : Provision the infrastrucure and 2 ec2 instances (Master and Worker)
![Capture d’écran (427)](https://user-images.githubusercontent.com/72893228/210557376-ac2c424e-0196-4734-bedf-2e6608cee532.png)
Master Node Ports:  
![Capture d’écran (424)](https://user-images.githubusercontent.com/72893228/210557544-9d272c89-5758-496b-9c0a-24c59e36cfa7.png)
Worker Node Ports: 
![Capture d’écran (425)](https://user-images.githubusercontent.com/72893228/210557557-dbf5293a-3501-479e-8a59-51e917d5d706.png)

## Step 2 : installing Kubeadm using Bash script 
Running worker.sh in worker node and master.sh in master node.
## Step 3 : Pushing images to DockerHub
![image](https://user-images.githubusercontent.com/72893228/210557949-c4f2cc13-a186-4957-9237-03dc47a2b7ab.png)
## Step 4 : Creating Deployment and services YAML files 
![Capture d’écran (428)](https://user-images.githubusercontent.com/72893228/210560745-aee58ac6-6c45-49fe-bdc5-f976f3d21431.png)


## Step 5 : Our Application is running !
![Capture d’écran (429)](https://user-images.githubusercontent.com/72893228/210562808-dd4b2c56-8084-4259-9ded-c29f7f1b7c93.png)
![Capture d’écran (430)](https://user-images.githubusercontent.com/72893228/210562781-4f4b241e-ab24-4339-9085-d3eeefb8864c.png)
