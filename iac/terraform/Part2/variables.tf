variable "resource_group_name" {
    type = string
    nullable = false
}

variable "location" {
    type = string
    nullable = false

    validation {
      condition = contains(["CentralUS"], var.location)
      error_message = "Location must be CentralUS."
    }
}