provider "aws" {
	access_key = "AKIAYO3E4MJWQYJZEB4X"
	secret_key = "YXx6f4E3KlzcSjEgfZhyOt4iAQmePOqyBWnP5/Q6"
	region = "us-east-2"
}

resource "aws_instance" "example" {
	ami = "ami-004d3abe7e5109c79"
	instance_type = "t2.micro"
	tags {
	Name = "newproject"
	}
}


