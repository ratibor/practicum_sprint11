resource "yandex_compute_disk" "boot-disk" {
  for_each = var.virtual_machines
  name     = each.value["disk_name"]
  type     = "network-hdd"
  zone     = "ru-central1-a"
  size     = each.value["disk"]
  image_id = each.value["template"]
}

resource "yandex_vpc_network" "sprint-11" {
  name = "sprint-11"
}

resource "yandex_vpc_subnet" "sprint-11-sub" {
  name           = "sprint-11-sub"
  zone           = "ru-central1-a"
  network_id     = yandex_vpc_network.sprint-11.id
  v4_cidr_blocks = ["192.168.10.0/24"]
}

resource "yandex_compute_instance" "virtual_machine" {
  for_each = var.virtual_machines
  name     = each.value["vm_name"]

  resources {
    cores  = each.value["vm_cpu"]
    memory = each.value["ram"]
  }

  boot_disk {
    disk_id = yandex_compute_disk.boot-disk[each.key].id
  }

  network_interface {
    subnet_id = yandex_vpc_subnet.sprint-11-sub.id
    nat       = true
  }
  metadata = {
    ssh-keys = "s7079593:${file("~/.ssh/id_ed25519.pub")}"
  }
}
