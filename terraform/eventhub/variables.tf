variable "azure_environment" {
  type        = string
  description = "Azure environment that represents government or commercial"
  default     = "public"
}

variable "location" {
  description = "The Azure location."
  type        = string
}

variable "resource_group_name" {
  description = "The name of the Azure resource group."
  type        = string
}

variable "eventhub_namespace_name" {
  description = "Specifies the name of the EventHub Namespace resource."
  type        = string
}

variable "sku" {
  description = "Defines which tier to use."
  type        = string
}

variable "capacity" {
  description = "Specifies the Capacity / Throughput Units for a Standard SKU namespace."
  type        = string
}

variable "tags" {
  description = "A mapping of tags which should be assigned to the Resource Group."
  type        = map
}

variable "eventhub_name" {
  description = "Specifies the name of the EventHub resource."
  type        = string
}

variable "partition_count" {
  description = "Specifies the current number of shards on the Event Hub."
  type        = string
}

variable "message_retention" {
  description = "Specifies the number of days to retain the events for this Event Hub."
  type        = string
}

variable "storage_container_name" {
  description = "The name of the Container which should be created within the Storage Account."
  type        = string
}

variable "storage_account_name" {
  description = "The name of the Storage Account where the Container should be created."
  type        = string
}

variable "container_access_type" {
  description = "The Access Level configured for this Container."
  type        = string
}
