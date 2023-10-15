# define varaibles and ami id for lsited below #
variable "instance_type" {
    description = "EC2 instance type"
     type = string
     default = "t2.micro"
  
}
variable "ami_id" {
    description = "EC2 ami-id "
     type = string
     default = "ami-041feb57c611358bd"
  
}

provider "aws" {
    region = "us-east-1"  # Set your desired AWS region
}

resource "aws_instance" "madhan" {
    ami           = var.ami_id # Specify an appropriate AMI ID
    instance_type = var.instance_type



}
  
    output "private_ip" {
  value = "${aws_instance.madhan.*.private_ip}"
}
