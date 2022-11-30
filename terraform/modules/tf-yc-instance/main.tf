module "yandex_compute_network" {
  source = "../tf-yc-network"
}
resource "yandex_compute_instance" "vm-1" {
    name = "chapter5-lesson2-anton-borodinskiy"
    platform_id = var.platform_id
    zone = var.zone

    resources {
        cores  = 2
        memory = 2
    }

    boot_disk {
        initialize_params {
            image_id = var.image_id
            size = var.boot_disk_init_size
        }
    }

    network_interface {
        subnet_id = module.yandex_compute_network.yandex_vpc_subnets[var.zone].subnet_id
        nat       = true
    }

    scheduling_policy {
        preemptible = var.scheduling_policy_preemptible
    }

    metadata = {
        user-data = "${file("/home/student/homework5-2/metadata.txt")}"
    }
}

