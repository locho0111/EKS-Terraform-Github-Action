variable "cluster-name" {
  type = string
}

variable "cidr_block" {
  type = string
}

variable "vpc-name" {
  type = string
}

variable "env" {
  type = string
}

variable "igw-name" {
  type = string
}

variable "pub-subnet-count" {
  type = number
}

variable "pub-cidr-block" {
  type = list(string)
}

variable "pub-availability-zone" {
  type = list(string)
}

variable "pub-sub-name" {
  type = string
}

variable "pri-subnet-count" {
  type = number
}

variable "pri-cidr-block" {
  type = list(string)
}

variable "pri-availability-zone" {
  type = list(string)
}

variable "pri-sub-name" {
  type = string
}

variable "public-rt-name" {
  type = string
}

variable "eip-name" {
  type = string
}

variable "ngw-name" {
  type = string
}

variable "private-rt-name" {
  type = string
}

variable "eks-sg-name" {
  type = string
}

variable "is-eks-cluster-enabled" {
  type = bool
}

variable "cluster-version" {

}

variable "endpoint-private-access" {
  type = bool
}

variable "endpoint-public-access" {
  type = bool
}

variable "addons" {
  type = list(object({
    name    = string
    version = string
  }))
}

variable "is_eks_role_enabled" {
  type = bool
}

variable "is_eks_nodegroup_role_enabled" {
  type = bool
}

variable "desired_capacity_on_demand" {
  type = number
}

variable "min_capacity_on_demand" {
  type    = number
  default = 1
}

variable "max_capacity_on_demand" {
  type    = number
  default = 1
}

variable "ondemand_instance_types" {
  type = list(string)
}
