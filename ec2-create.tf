resource "aws_instance" "this" {

  ami                    = "${var.ami}"
  instance_type          = "${var.instance_type}"
  user_data              = "${var.user_data}"
  key_name               = "ankur-ec2"
  monitoring             = "${var.monitoring}"
  iam_instance_profile   = "${var.iam_instance_profile}"

  associate_public_ip_address = "${var.associate_public_ip_address}"
  private_ip                  = "${var.private_ip}"

  ebs_optimized          = "${var.ebs_optimized}"
  volume_tags            = "${var.volume_tags}"
  root_block_device      = "${var.root_block_device}"
  ebs_block_device       = "${var.ebs_block_device}"
  ephemeral_block_device = "${var.ephemeral_block_device}"

  disable_api_termination              = "${var.disable_api_termination}"
  instance_initiated_shutdown_behavior = "${var.instance_initiated_shutdown_behavior}"
  placement_group                      = "${var.placement_group}"
  tenancy                              = "${var.tenancy}"
  subnet_id                            = "${aws_subnet.My_VPC_Subnet.id}"
  count                                = "${var.instance_count}"
  tags {
    Name = "TerraformEC2"
  }
}
