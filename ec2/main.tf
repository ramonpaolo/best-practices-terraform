resource "aws_instance" "ec2" {
    ami = "ami-0895310529c333a0c"
    instance_type = "t2.micro"
}