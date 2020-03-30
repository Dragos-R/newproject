provider "aws" {
  region = "us-east-2"
}

data "template_file" "user_data" {
template = "${file("userdata.sh")}"
}

resource "aws_instance" "web" {
  ami           = "ami-09a5b0b7edf08843d"
  instance_type = "t2.micro"
  key_name = "terraform"
  user_data = "${data.template_file.user_data.rendered}"
  tags = {
    Name = "newproject"
  }
}
