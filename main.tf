resource "aws_iam_role" "contoso-test-terraform-role" {
  name = "contoso-testing-terraform-role-devops"
  #provider = aws.contoso-testing
  assume_role_policy = jsonencode(
    {
      "Version" : "2012-10-17",
      "Statement" : [
        {
          "Effect" : "Allow",
          "Action" : "sts:AssumeRole",
          "Principal" : {
            "AWS" : var.contoso-test-account-id
          },
          "Condition" : {}
        }
    ] }
  )
  managed_policy_arns = ["arn:aws:iam::aws:policy/AdministratorAccess"]
}