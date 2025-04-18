#PUB INSTANCE 1
resource "aws_instance" "web1" {
  ami           = var.ami_id
  instance_type = var.instance_type
  count         = var.instance_count
  associate_public_ip_address = true
  subnet_id = aws_subnet.pubsub1.id
  vpc_security_group_ids =[aws_security_group.pub-seg.id]
  key_name = "demo"
  iam_instance_profile   = aws_iam_instance_profile.s3_read_profile.name
  user_data = file("chatbot.sh")
  tags = {
    Name = "webserver1"
  }
}


