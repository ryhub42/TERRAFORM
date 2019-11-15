variable "sample" {
  type = list(string)
  default = ["sg1", "sg2", "sg3", 10, true]
}

resource "null_resource" "sample" {
  provisioner "local-exec" {
    command = "echo ${var.sample[3]}"
  }
}