# Azure-Terraform-State Module

## Purpose
This module create a storage account and storage container for storing Terraform state in Azure

## Description
This module is used for creating a storage container for storing state

## Usage Instructions
Built for use alongside other modules

```commandline
Example Provider block

terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~>3.0"
    }
  }
  backend "azurerm" {
      resource_group_name  = "<resource_group_name"
      storage_account_name = "<storage_account_name>"
      container_name       = "<storage_container_name"
      key                  = "terraform.tfstate"
  }
}

```

## Preconditions and Assumptions

None

## Requirements

No Requirements

## Providers


| Name    | Version |
|---------|---------|
| azurerm | 3.81.0  |

## Resources

| Name                      | Type     |
|---------------------------|----------|
| azurerm_storage_account   | resource |
| azurerm_storage_container | resource |

## Inputs

| Name        | Description | Type        | Default | Required |
|-------------|-------------|-------------|---------|----------|
| name        | n/a         | string      | n/a     | yes      |
| common_tags | n/a         | map(string) | n/a     | yes      |
| location    | n/a         | string      | n/a     | yes      |

## Outputs

| Name                   | Description |
|------------------------|-------------|
| storage_account_name   | n/a         |
| storage_container_name | n/a         |
| resource_group_name    | n/a         |


