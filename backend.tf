terraform {
 backend "gcs" {
  bucket = "bkt-tfstate-00"
  prefex = "tf/state"
 }
}
