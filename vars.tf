variable "region" {
  default = "ap-southeast-2"
}

variable "ami_id" {
  default = "ami-08a74056dfd30c986"
}

variable "instance_type" {
  default = "t2.micro"
}

variable "key_name" {
  default = "EC2Tutorial"
}

variable "test_sg" {
  default = "sg-0875615eb4937b503"
}
