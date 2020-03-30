provider "aws" {

	region = "us-east-2"
}

resource "aws_instance" "example" {
	ami = "ami-004d3abe7e5109c79"
	instance_type = "t2.micro"
	tags {
	Name = "newproject"
	}
}


