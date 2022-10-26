output "pub1" {
  value = aws_subnet.pub1.id
}

output "pub2" {
  value = aws_subnet.pub2.id
}

output "prv1" {
  value = aws_subnet.prv1.id
}

output "prv2" {
  value = aws_subnet.prv2.id
}

output "allow_ssh" {
  value = aws_security_group.allow_ssh.id
}
output "allow_3000-ssh" {
  value = aws_security_group.allow_3000-ssh.id
}