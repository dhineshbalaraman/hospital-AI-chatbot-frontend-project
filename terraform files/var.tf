variable aws_region {
  type        = string
  description = "region"
  default     = "us-east-1"
}
#CIDR
variable cidr_vpc {
  type        = string
  description = "cidr"
  default     = "10.0.0.0/16" #65536
}
#public subnet-1
variable subpub1 {
  type        = string
  description = "cidr"
  default     = "10.0.1.0/24" #256
}

#public subnet-2
variable subpub2 {
  type        = string
  description = "cidr"
  default     = "10.0.2.0/24" #256
}
#private subnet-1
variable subpvt1 {
  type        = string
  description = "cidr"
  default     = "10.0.3.0/24" #256
}

#private subnet-2
variable subpvt2 {
  type        = string
  description = "cidr"
  default     = "10.0.4.0/24" #256
}

#Availability Zones -public-1
variable az_sub_pub1 {
  type        = string
  description = "cidr"
  default     = "us-east-1a" 
}
#Availability Zones -public-2
variable az_sub_pub2 {
  type        = string
  description = "cidr"
  default     = "us-east-1b" 
}

#Availability Zones -private-1
variable az_sub_pvt1 {
  type        = string
  description = "cidr"
  default     = "us-east-1a" 
}
#Availability Zones -private-2
variable az_sub_pvt2 {
  type        = string
  description = "cidr"
  default     = "us-east-1b" 
}
#AMI
variable ami_id {
  type        = string
  description = "cidr"
  default     = "ami-0e449927258d45bc4" 
}

#Instance Type
variable instance_type {
  type        = string
  description = "cidr"
  default     = "t3.micro" 
}

#Instance Count
variable "instance_count" {
  description = "Number of EC2 instances to launch"
  type        = number
  default     = 1
}
