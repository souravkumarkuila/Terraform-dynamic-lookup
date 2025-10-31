resource_groups = {
    rg-1 = {
        name = "rg-1"
        location = "eastus"
        managed_by = "teamA"
    }
    rg-2 = {
        name = "rg-2"
        location = "westus"
        managed_by = "teamB"
    }
}

virtual_networks = {
    vnet-1 = {
        name = "vnet-1"
        location = "eastus"
        resource_group_name = "rg-1"
        address_space = ["10.0.0.0/16"]
        subnets = {
            subnet-1 = {
                name = "subnet-1"
                address_prefixes = ["10.0.1.0/24"]
            }
            subnet-2 = {
                name = "subnet-2"
                address_prefixes = ["10.0.2.0/24"]
            }
        }
    }
    vnet-2 = {
        name = "vnet-2"
        location = "westus"
        resource_group_name = "rg-2"
        address_space = ["10.0.0.0/24"]
    }
}