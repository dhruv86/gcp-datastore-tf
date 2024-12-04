variable "region" {
  type    = string
  default = "us-east1"
  validation {
    condition     = contains(["us-east1", "us-east4", "us-east5"], var.region)
    error_message = "Valid values for var: region are (us-east1, us-east4, us-east5)."
  }
}

variable "project_id" {
  type    = string
  default = "DataStoreTest"
}

variable "mode" {
  type        = string
  default     = "Datastore Mode"
  description = "The mode in which to created the datastore, i.e. Native or Datastore mode"
}

variable "state_bucket" {
  type    = string
  default = "tf_state_bucket_dhrj_1986"
}

variable "name" {
  type        = string
  description = "Name of the Datastore"
  default     = "main_dhrj"
}


variable "kind_name" {
  type    = string
  default = "task"
}

variable "indexes" {
  type    = string
  default = <<EOF
indexes:

- kind: Task
  ancestor: no
  properties:
  - name: done
  - name: priority
    direction: desc

- kind: Task
  properties:
  - name: collaborators
    direction: asc
  - name: created
    direction: desc
EOF

}

