resource "aws_ecr_repository" "ecr_for_assignment1" {
  name                 = "ecr_for_assignment1"
  image_tag_mutability = "MUTABLE"

  image_scanning_configuration {
    scan_on_push = true
  }
}