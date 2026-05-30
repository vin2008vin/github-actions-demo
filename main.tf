resource "google_storage_bucket" "my_bucket" {
 name = "bkt-demo-000"
 location = "asia-south1"
 project = "project-b6ac39af-845d-4183-94e"
 force_destory = true
 public_access_prevention = "enforced"
}
