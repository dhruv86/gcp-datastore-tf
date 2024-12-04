terraform {
  backend "gcs" {
    bucket      = "tf_state_bucket_dhrj_1986"
    prefix      = "terraform/state"
    credentials = "/Users/dhruv8626/Downloads/datastoretest-443704-cc46b083da8d.json"
  }
}