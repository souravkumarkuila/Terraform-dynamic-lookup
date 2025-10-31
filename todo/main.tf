locals{
    common_tags = {
        environment = "dev"
        project    = "todo-app"
    }
}

module "resource_group"{
    source = "../modules/azurerm_resource_group"
    resource_groups = var.resource_groups
    tags = local.common_tags
}

module "virtual_network"{
    source = "../modules/azurerm_virtual_network"
    virtual_networks = var.virtual_networks
    tags = local.common_tags
    depends_on = [ module.resource_group ]
}