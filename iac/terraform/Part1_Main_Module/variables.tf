variable "resource_group_name" {
    type = string
    nullable = false
}

variable "storageAccountName" {
    type = string
    nullable = false

    validation {
        condition = length(var.storageAccountName) > 3
        error_message = "The storage account name should be at least 3 characters"
    }
}

variable "storageAccountBase" {
    type = string
    nullable = false
}

variable "uniqueIdentifier" {
    type = string
    nullable = false
    default = "20240718rmh"

    validation {
        condition = length(var.uniqueIdentifier) == 11
        error_message = "The unique identifier should be 11 characters long"
    }
}

variable "environment" {
    type = string
    nullable = false

    validation {
        condition = contains(tolist(["dev", "prod"]), var.environment)
        error_message = "The environment variable must be either dev or prod"
    }
}