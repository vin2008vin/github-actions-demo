resource "google_storage_bucket" "my_bucket" {
 name = "bkt-demo-000"
 location = "asia-south1"
 project = ""
 force_destory = true
 public_access_prevention = "enforced"
}
