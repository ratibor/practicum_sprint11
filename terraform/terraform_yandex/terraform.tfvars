virtual_machines = {
  "vm-1" = {
    vm_name   = "nginx-proxy"          # Имя ВМ
    vm_desc   = "Проксирующий Nginx"   # Описание
    vm_cpu    = 2                      # Кол-во ядер процессора
    ram       = 2                      # Оперативная память в ГБ
    disk      = 20                     # Объём диска в ГБ
    disk_name = "ubuntu-nginx-px"      # Название диска
    template  = "fd85bll745cg76f707mq" # ID образа ОС для использования
  },
  "vm-2" = {
    vm_name   = "nginx-out-1"          # Имя ВМ
    vm_desc   = "Отдающий Nginx-1"     # Описание
    vm_cpu    = 2                      # Кол-во ядер процессора
    ram       = 2                      # Оперативная память в ГБ
    disk      = 20                     # Объём диска в ГБ
    disk_name = "ubuntu-nginx-out-1"   # Название диска
    template  = "fd85bll745cg76f707mq" # ID образа ОС для использования
  },
  "vm-3" = {
    vm_name   = "nginx-out-2"          # Имя ВМ
    vm_desc   = "Отдающий Nginx-2"     # Описание
    vm_cpu    = 2                      # Кол-во ядер процессора
    ram       = 2                      # Оперативная память в ГБ
    disk      = 20                     # Объём диска в ГБ
    disk_name = "ubuntu-nginx-out-2"   # Название диска
    template  = "fd85bll745cg76f707mq" # ID образа ОС для использования
  }
}
