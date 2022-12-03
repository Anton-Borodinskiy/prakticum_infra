Desctiption:
	Module for searching information about networks of instance zone
	
Provider:
	- yandex

Changeable variables:
	variable "instance_zone" {
	description = "instance_zone"
	type        = set(string)
	default     = ["ru-central1-a", "ru-central1-b"]
	}

Outputs:
	- Yandex.Cloud Subnets map 

