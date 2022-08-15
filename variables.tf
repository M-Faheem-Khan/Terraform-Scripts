variable "do_token" {
    type = string
    description = "Digital Ocean Cloud API Secret"
}

variable "droplet_size_small" {
    type = string
    description = "Size of Droplet"
    default = "s-1vcpu-1gb"
}

variable "droplet_region" {
    type = string
    description = "Region of droplet deployment"
    default = "tor1"
}

variable "droplet_ubuntu_20_04_x64" {
    type = string
    description = "Ubuntu 20.04 x64 image slug"
    default = "ubuntu-20-04-x64"
}


# EOF