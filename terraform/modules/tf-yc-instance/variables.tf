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
