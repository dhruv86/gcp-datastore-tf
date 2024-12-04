# resource "google_storage_bucket" "tfstate" {
#   name          = var.state_bucket
#   location      = var.region
#   project       = var.project_id
#   storage_class = "NEARLINE"
#   labels        = {
#     environment = "development"
#     created-by  = "terraform"
#   }
# }
resource "cloud-datastore" "main" {

  project    = var.project_id
  name       = var.name
  mode       = var.mode
  location   = var.region
  kind       = var.kind_name
  indexes    = var.indexes
  #depends_on = [time_sleep.wait_120_seconds]
   
}