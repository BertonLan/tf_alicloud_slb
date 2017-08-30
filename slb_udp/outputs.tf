//// Output the ID and Name
output "slb_id" {
  value = "${join(",", alicloud_slb.load_balancer.*.id)}"
}

output "slb_name" {
  value = "${join(",", alicloud_slb.load_balancer.*.name)}"
}
