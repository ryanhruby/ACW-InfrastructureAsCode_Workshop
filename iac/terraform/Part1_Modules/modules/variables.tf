variable "storageAccountBase" {
    type = string
    nullable = false
    default = "iacstgacct"
}

variable "uniqueIdentifier" {
    type = string
    nullable = false
    default = "20240718rmh"
}

variable "environment" {
    type = string
    nullable = false
    default = "dev"
}

variable "resourceGroupName" {
    type = string
    nullable = false
}

variable "location" {
    type = string
    nullable = false
}