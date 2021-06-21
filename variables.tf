variable "vpc_cidr_block" {
  type        = string
  description = "CIDR block to assign to the VPC"
}

variable "name_prefix" {
  type = string

}

variable "common_tags" {
  type        = map(any)
  description = "Default tags which will be applied to all the created resources. The current default keys must be allways present!"
}

variable "public_subnet_cidrs" {
  type = list(object({
    cidr     = string
    az_index = number
  }))
  description = "List of objects reprisenting the public subnets CIDRs and their availability zones. The az_index property is used as an index to retireve a zone from the list of the availability zones for the current AWS region."
}

variable "private_subnet_cidrs" {
  type = list(object({
    cidr     = string
    az_index = number
  }))
  default     = []
  description = "List of objects reprisenting the private subnets CIDRs and their availability zones. The az_index property is used as an index to retireve a zone from the list of the availability zones for the current AWS region."
}