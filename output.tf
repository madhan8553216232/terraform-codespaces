provider "aws" {
    region = "us-east-1"  # Set your desired AWS region
}

resource "aws_instance" "madhan" {
    ami           = "ami-041feb57c611358bd"  # Specify an appropriate AMI ID
    instance_type = "t2.micro"



}
  
    output "private_ip" {
  value = "${aws_instance.madhan.*.private_ip}"
}
