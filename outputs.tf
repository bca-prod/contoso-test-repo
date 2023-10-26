output "contoso-test-terraform-role-id" {
  value = resource.aws_iam_role.contoso-test-terraform-role.id
}

# Outputs file
output "meow_app_dns" {
  value = "http://${aws_eip.hashicat.public_dns}"
}

output "meow_app_ip" {
  value = "http://${aws_eip.hashicat.public_ip}"
}