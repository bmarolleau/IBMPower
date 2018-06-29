
IBM Cloud Private with CAM/Terraform & PowerVC + IBM i 
=======
This example provision an IBM i VM/LPAR from CAM using an OpenStack Cloud Connection to PowerVC
It highlights how to perform a semi-complex deployment
and can serve as a template to bootstrap whatever applications are of interest
for your environment.
Soon:  PowerAI & GPU as Service Cloud Solution with K8s on POWER8/9 

Solution Overview : 
-----------
![alt text](https://github.com/bmarolleau/IBMPower/blob/master/OpenStack/terraform/hcl/single-vm-deploy/single-vm-deploy-ibmi-cam-0.png "IBM i CAM ICP")

Demo :  
-----------
* IBM Cloud Private Login

![alt text](https://github.com/bmarolleau/IBMPower/blob/master/OpenStack/terraform/hcl/single-vm-deploy/single-vm-deploy-ibmi-cam-3.png "IBM i CAM ICP")


* Browse the Offering Catalog & choose a IaaS VM Provisioning service

![alt text](https://github.com/bmarolleau/IBMPower/blob/master/OpenStack/terraform/hcl/single-vm-deploy/single-vm-deploy-ibmi-cam-4.png "IBM i CAM ICP")

* Deployed instance on Cloud Automation Manager (Terraform templates & services)
NB: CAM is a POD (application) running on our ICP/Kubernetes Cluster

![alt text](https://github.com/bmarolleau/IBMPower/blob/master/OpenStack/terraform/hcl/single-vm-deploy/single-vm-deploy-ibmi-cam-1.png "IBM i CAM ICP")

* My Private Cloud , Behind the scenes: PowerVC / Power Systems Infrastructure & my new IBM i VM

![alt text](https://github.com/bmarolleau/IBMPower/blob/master/OpenStack/terraform/hcl/single-vm-deploy/single-vm-deploy-ibmi-cam-2.png "IBM i CAM ICP")


Assumptions
-----------
* It is assumed that the reader is already familiar with Terraform; if you
  are not, there are a lot of great articles available on the web or you can
  read this PowerVC `blog post
  <https://developer.ibm.com/powervc/2017/06/29/infrastructure-code-terraform-meets-powervc/>`_

Prerequisites
-------------
* You have `downloaded Terraform
  <https://www.terraform.io/downloads.html>`_ and installed it on your workstation
* You have an instance of PowerVC 1.3.3 (or newer) running
* You have a bare bones Ubuntu 16.04 (or newer) image loaded within PowerVC;
  you could modify the cloud-init script to also work with your operating
  system of choice
* If you're using this for anything beyond a proof-of-concept, within
  **main.tf**, please also take the added step of setting *insecure=false* and
  set the *cacert* option to the contents of the PowerVC certificate
  (*/etc/pki/tls/certs/powervc.crt*)
* Run [**terraform apply**] to start the NGINX deployment
