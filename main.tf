resource "digitalocean_project" "splunk_project" {
  name        = "Splunk"
  description = "Splunk Server Deployment"
  purpose     = "Web Application"
  environment = "Production"
}

# Splunk Server Droplet
resource "digitalocean_droplet" "splunk_server" {
  name   = "splunk-server"
  size   = var.droplet_size_small
  image  = var.droplet_ubuntu_20_04_x64
  region = var.droplet_region
  tags   = ["splunk-server"]
}

# Adding Splunk server droplet to the project
resource "digitalocean_project_resources" "splunk_project_resources" {
  project = digitalocean_project.splunk_project.id
  resources = [
    digitalocean_droplet.splunk_server.urn
  ]
}

output "splunk-server-ipv4" {
  value = digitalocean_droplet.splunk_server.ipv4_address
}

# EOF