# यह Terraform कोड Azure संसाधनों के प्रबंधन के लिए उपयोग किया जाता है।
# इसमें backend configuration और provider details शामिल हैं।
# यह कोड Azure में resource group, storage account, और अन्य संसाधनों को प्रबंधित करने के लिए उपयोगी है।
# Extra lie aded to the code snippet above, this is a Terraform configuration file that sets up the backend for state management and defines the provider for Azure resources.
terraform { 
  backend "azurerm" {
    resource_group_name  = "brijesh_RG12"                     # Can be passed via `-backend-config=`"resource_group_name=<resource group name>"` in the `init` command.
    storage_account_name = "allmembersstorag"                              # Can be passed via `-backend-config=`"storage_account_name=<storage account name>"` in the `init` command.
    container_name       = "prodtfstate"
    subscription_id = "8c84403a-3405-4e76-b4b7-c5eb9767a3e0"                               # Can be passed via `-backend-config=`"container_name=<container name>"` in the `init` command.
    key                  = "prod.tfstate"                # Can be passed via `-backend-config=`"key=<blob key name>"` in the `init` command.
  }

  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "4.26.0"
    }
  }
}

provider "azurerm" {
 features {}
 subscription_id = "8c84403a-3405-4e76-b4b7-c5eb9767a3e0"
 }  
