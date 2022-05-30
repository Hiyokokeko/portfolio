resource "aws_cloudwatch_log_group" "cs-ecs-backend" {
  name              = "/ecs/backend"
  retention_in_days = 180
}
resource "aws_cloudwatch_log_group" "cs-ecs-frontend" {
  name              = "/ecs/frontend"
  retention_in_days = 180
}
resource "aws_cloudwatch_log_group" "cs-ecs-db-create" {
  name              = "/ecs/db-create"
  retention_in_days = 180
}
resource "aws_cloudwatch_log_group" "cs-ecs-db-migrate" {
  name              = "/ecs/db-migrate"
  retention_in_days = 180
}
resource "aws_cloudwatch_log_group" "meetwithkids-ecs-db-seed" {
  name              = "/ecs/db-seed"
  retention_in_days = 180
}
