provider "aws" {
  region = "ap-south-1"
}

resource "aws_instance" "terraform-instance-1" {
  ami           = "ami-0317b0f0a0144b137"
  instance_type = "t2.micro"
  key_name      = "demo-2025"
  tags = {
    Name  = "ss-instance-1"
    appid = "345"
    env   = "dev"
  }
  availability_zone = "ap-south-1a"
}

/*resource "aws_instance" "terraform-instance-2" {
  ami           = "ami-0317b0f0a0144b137"
  instance_type = "t2.micro"
  key_name      = "jenkins"
  tags = {
    Name = "ss-instance-2"

  }
  availability_zone = "ap-south-1a"
}*/
