variable "image" {
  type        = string
  description = "The Docker image to run"
}

job "eldocam" {
  datacenters = ["dc1"]
  type        = "service"

  group "web" {
    count = 3

    network {
      port "http" {
        to = 80
      }
    }

    service {
      name = "eldocam-frontend"
      port = "http"
      tags = [
        "urlprefix-/",
        "frontend"
      ]

      check {
        type     = "http"
        path     = "/"
        interval = "10s"
        timeout  = "2s"
      }
    }

    task "server" {
      driver = "podman"

      config {
        image = var.image
        ports = ["http"]
      }

      resources {
        cpu    = 200
        memory = 128
      }

      logs {
        max_files     = 3
        max_file_size = 10
      }
    }
  }
}
