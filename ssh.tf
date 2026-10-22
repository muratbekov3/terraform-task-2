resource "google_compute_project_metadata" "ssh" {
  metadata = {
    shared_ssh_key = var.ssh_key
    ssh-keys       = var.ssh_key
  }
}