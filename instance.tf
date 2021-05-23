resource "aws_instance" "web" {
  ami           = "ami-0d5eff06f840b45e9"
  instance_type = "t2.micro"
  key_name = aws_key_pair.sshkeyt.key_name
  security_groups = [ aws_security_group.allow_ssh.name ]

  tags = {
    Name = "HelloWorld"
  }
}