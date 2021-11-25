variable "rg_name" {
    type = string
}

variable "storageaccount_name"{
    type = string
}

variable "location" {
    type = string
}

variable "tags" {
    type = object({
      ApplicationName     = string
      AppTypeRole         = string
      DataProtection      = string
      DRTier              = string
      Environment         = string
      Location            = string
      NotificationContact = string
      ProductCostCenter   = string
      SupportResponseSLA  = string
      WorkloadType        = string
      Owner               = string
    })
}