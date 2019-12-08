variable "docker_host"{
	default = "tcp://127.0.0.1/"
}

variable "apache_count" {
	default = 2
}

variable "apache_img" {
	default = "apache2server" # set this to the docker image ID
}

