#####################################################################
##
##      Created 6/29/18 by BMA. for PowerAI-Cloud
##
#####################################################################

variable "pv_name"

{

 description = "Persistent Volume Name"

}

variable "icp_token"

{

description = "ICP Token Value"

}
variable "pv_path"

{

description = "PV path"

}


provider "kubernetes"

{

host     = "https://10.3.50.30:8001"

insecure = "true"

token = "${var.icp_token}"

}

resource "kubernetes_persistent_volume" "powerai_pv" {

metadata

{

    name = "${var.pv_name}"

}

spec {

            capacity

           {

           storage = "10Gi"

           }

           access_modes = ["ReadWriteMany"]

           persistent_volume_source {

          host_path  

          {

          path = "${var.pv_path}" }

         }

    }

}

output "pv_name"

{

value="${var.pv_name}"

}