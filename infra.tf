provider "aws" {
    region = us-east-2
    }


resource "aws_instance" "jenkins_master" {
    ami = "ami-f63b1193"
    instance_type = "t2.micro"

    tags {
        Name = "jenkins_master"
        role = "jenkins_master"
    }
}
