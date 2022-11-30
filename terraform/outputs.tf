output "ip_address" {
    value = module.yandex_compute_instance.ip_address
}

output "nat_ip_address" {
    value = module.yandex_compute_instance.nat_ip_address
}
