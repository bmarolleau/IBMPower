# IBMPower

This project is used to provide some sample Terraform scripts that can be used
to provision workloads to IBM Power Systems. The intent is that they can be
used as templates from which people can create their own Terraform scripts to
deploy their workload(s) of choice.

# PowerAI & K8s 

Provision a PowerAI as a Service using 
 helm install helm/nvidia-powerai  --name pwrai1 --set license=accept,service.externalIPs[0]=10.3.50.34,resources.gpu=0  --tls --namespace default 


## Licenses and Copyright

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

 Licensed Materials - Property of IBM

 ©Copyright IBM Corp. 2017.
