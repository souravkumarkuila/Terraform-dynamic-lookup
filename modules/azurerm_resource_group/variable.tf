variable "resource_groups"{
 type = map(object({
    name = string
    location = string
    managed_by = optional(string)
 }))

 default = {
    rg1 = {
        name = "rg1"
        location = "eastus"
        managed_by = "teamA"
    }
    rg2 = {
        name = "rg2"
        location = "westus"
        managed_by = "teamB"
    }
 }
}

variable "tags" {
  type = map(string)
}