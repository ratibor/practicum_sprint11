terraform {
  required_providers {
    yandex = {
      source = "yandex-cloud/yandex"
    }
  }
  required_version = ">= 0.13"
}

provider "yandex" {
  service_account_key_file = file("key.json")
  cloud_id = "b1gkp85lcd5a9lg0mui2"
  folder_id = "b1glp8khqsdbfm6dhtf2"
  zone = "ru-central1-a"
}
