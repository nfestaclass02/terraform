resource "aws_instance" "terra_instance_02" {
  ami = "${var.ami}"
  instance_type = "${var.instance_type}"
  vpc_security_group_ids = ["${aws_security_group.ec2_sg_01.id}"]
  subnet_id = "${aws_subnet.public_subnets.id}"
  key_name = "maven-key"
  tags = {
    "Name" = "terra_instance_02"
  }
}

resource "aws_instance" "terra_instance_03" {
  ami = "${var.ami}"
  instance_type = "${var.instance_type}"
  vpc_security_group_ids = ["${aws_security_group.ec2_sg_01.id}"]
  subnet_id = "${aws_subnet.public_subnets.id}"
  key_name = "maven-key"
  tags = {
    "Name" = "terra_instance_03"
  }
}