resource "null_resource" "name" {
  connection {
    type = "ssh"
    host = aws_eip.bastion_ip.public_ip
    user = "ec2-user"
    password = ""
    private_key = file("private-key/bastionkey.pem")
  }
  provisioner "file" {
    source = "private-key/bastionkey.pem"
    destination = "/tmp/bastionkey.pem"
  }
  provisioner "remote-exec" {
    inline = [
      "sudo chmod 400 /tmp/bastionkey.pem"
      
    ]
  }
}