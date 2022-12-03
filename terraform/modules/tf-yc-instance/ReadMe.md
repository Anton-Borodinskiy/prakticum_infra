Desctiption:
	Module for creating VM in yandex cloud

Provider:
	- yandex

Changeable variables:
	variable "zone" {
	  description = "name"
	  type        = string
	  default     = "ru-central1-a"
	}

	variable "platform_id" {
	  description = "platform_id"
	  type        = string
	  default     = "standard-v1"
	}

	variable "scheduling_policy_preemptible" {
	  description = "scheduling_policy_preemptible"
	  type        = bool
	  default     = false
	}

	variable "boot_disk_init_size" {
	  description = "boot_disk_init_size"
	  type        = number
	  default     = 30
	}
	variable "image_id" {
	  description = "image_id"
	  type        = string
	  default     = "fd80qm01ah03dkqb14lc"
	}

Outputs:
	- private IP of VM = ip_address
	- public IP of VM = nat_ip_address
	
Dependencies:
	- module yandex_compute_network for defining subnet_id based on zone
