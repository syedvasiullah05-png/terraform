resource "random_pet" "my_pet" {
  prefix    = "MR"
  separator = "-"
  length    = 1
}

resource "local_file" "my_pet" {
  filename = var.filename

  # Create content using the random_pet id only once
  content = "My pet name is: ${random_pet.my_pet.id}"

  lifecycle {
    prevent_destroy = true        # Never delete the file
    ignore_changes  = [content]   # Never replace the file if content changes
  }
}

