output "instance_ips" {
  value = ["${aws_instance.maq.*.public_ip}"]
}