resource "aws_instance" "myawsserver" {
  ami = "ami-0603cbe34fd08cb81"
  instance_type = "t2.micro"

  tags = {
    Name = "Techlanders-aws-ec2-instance-v4"
    Env = "Dev"
    Owner = "Priya"
  }
}

output "myawsserver-ip" {
  value = "${aws_instance.myawsserver.public_ip}"
}

