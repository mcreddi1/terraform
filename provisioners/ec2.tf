resource "aws_instance" "expense" {
    ami = "ami-09c813fb71547fc4f"
    instance_type = "t3.micro"
    vpc_security_group_ids = [aws_security_group.allow_ssh_terraform.id]

    # local exec will execute commands we provided on local computer
    # remote exec will connect to the remote server and install the required packages
    provisioner "local-exec" {
    command = "echo ${self.private_ip} > pub_ip.txt"
    }

    connection {
        host = self.public_ip
        #user = "ec2-user"
        #password = "DevOps321"
        type = "ssh"
    }

    provisioner "remote-exec" {
      inline = [ 
        "sudo dnf install nginx -y",
        "sudo dnf install ansible -y"
       ]
    }
    
}

resource "aws_security_group" "allow_ssh_terraform" {
    name        = "allow_sshh" #allow_ssh is already there in my account
    description = "Allow port number 22 for SSH access"

    # usually we allow everything in egress
    egress {
        from_port        = 0
        to_port          = 0
        protocol         = "-1"
        cidr_blocks      = ["0.0.0.0/0"]
        ipv6_cidr_blocks = ["::/0"]
    }

    ingress {
        from_port        = 22
        to_port          = 22
        protocol         = "tcp"
        cidr_blocks      = ["0.0.0.0/0"] #allow from everyone
        ipv6_cidr_blocks = ["::/0"]
    }

    tags = {
        Name = "allow_sshh"
    }
}