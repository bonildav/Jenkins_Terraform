
variable "region" {
  default = "nyc1"
}

resource "digitalocean_droplet" "nginx_droplet" {
  image = "ubuntu-18-04-x64"
  name = "nginx${count.index}"
  region = "${var.region}"
  size  = "512mb"
  private_networking = true
