// Provider specific configs
provider "alicloud" {
  access_key = "${var.alicloud_access_key}"
  secret_key = "${var.alicloud_secret_key}"
  region = "${var.region}"
}

resource "alicloud_slb" "load_balancer" {
  name = "${var.slb_name}"
  internet_charge_type = "${var.internet_charge_type}"
  internet = "${var.is_internet}"
  vswitch_id = "${var.vswitch_id}"
  listener = [
    {
      "instance_port" = "${var.backend_port}"
      "lb_port" = "${var.front_port}"
      "lb_protocol" = "http"
      "bandwidth" = "${var.listener_bandwidth}"
      "scheduler" = "${var.scheduler}"
      "persistence_timeout" = "${var.persistence_timeout}"
      "health_check_connect_port" = "${var.check_connect_port}"
      "healthy_threshold" = "${var.healthy_threshold}"
      "unhealthy_threshold" = "${var.unhealthy_threshold}"
      "health_check_timeout" = "${var.check_timeout}"
      "health_check_interval" = "${var.check_interval}"
    }]
}