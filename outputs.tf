output "web.dns" {
  value = "${aws_instance.web-1.public_dns}"
}

output "nat.dns" {
  value = "${aws_instance.nat.public_dns}"
}
