provider "kubernetes" {
  host = "https://localhost:6443"
  config_context_auth_info = "docker-desktop"
  config_path    = "~/.kube/config"
  insecure               = true
  config_context = "docker-desktop"
}
