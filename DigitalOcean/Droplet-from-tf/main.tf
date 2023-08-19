terraform {
  required_providers {
    digitalocean = {
      source = "digitalocean/digitalocean"
      version = "~> 2.0"
    }
  }
}
 

# Configure the DigitalOcean Provider
provider "digitalocean" {
  token = "dop_v1_b08de060e7ea086ddd3fb692747822bcbb2a6064118ba168e891776822d57ce8"
}

# Create a new Web Droplet in the nyc2 region
resource "digitalocean_droplet" "web" {
  image  = "ubuntu-18-04-x64"
  name   = "web-1"
  region = "nyc3"
  size   = "s-1vcpu-1gb"
  ssh_keys = ["0e:e0:cf:42:a0:8d:8e:a0:7d:87:ec:48:ce:8f:b2:d0"]
}
