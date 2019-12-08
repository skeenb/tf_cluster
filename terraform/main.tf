resource "docker_container" "apache1" {
	name = "apache1" 
	image = "${var.apache_img}"
}

resource "docker_container" "apache2" {
	name = "apache2" 
	image = "${var.apache_img}"
}
