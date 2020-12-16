# logs.tf

# Set up CloudWatch group and log stream and retain logs for 30 days
resource "aws_cloudwatch_log_group" "ma_log_group" {
  name              = "/ecs/ma-app"
  retention_in_days = 30

  tags = {
    Name = "ma-log-group"
  }
}

resource "aws_cloudwatch_log_stream" "ma_log_stream" {
  name           = "ma-log-stream"
  log_group_name = aws_cloudwatch_log_group.ma_log_group.name
}