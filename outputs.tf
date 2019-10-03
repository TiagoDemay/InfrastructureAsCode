output "instance_ips" {
  value = ["${aws_instance.maq.*.public_ip}"]
}

output "instance_ids" {
  value = ["${aws_instance.maq.*.id}"]
}