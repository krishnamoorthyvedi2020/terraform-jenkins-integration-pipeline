provider "aws" {
    region = "ap-south-1"
}

resource "aws_instance" "ansible-ec2" {
  ami= "ami-05ba3a39a75be1ec4"
  instance_type = "t2.micro"
#   vpc_security_group_ids = ["sg-0490cb0718a91b5bc"] #hardcoded default security group with inbound and outbound open to all traffic
#    key_name="k2llabs-terraform"
#    tags = {
#      "Name" = "ansible-machine"
#    }

#     provisioner "remote-exec" {

#         inline = [
#             "sudo apt update --yes",
#             "sudo apt install software-properties-common --yes",
#             "sudo add-apt-repository --yes --update ppa:ansible/ansible",
#             "sudo apt install ansible --yes"
#         ]
#         }


#     connection {
#             type     = "ssh"
#             user     = "ubuntu"
#             # key pair should be created manually and saved in location where this resource is created
#             private_key= file("./k2llabs-terraform.pem")
#             host     = self.public_ip
#         }

}

output "instance_ip" {
  value = aws_instance.ansible-ec2.public_ip
}

   
