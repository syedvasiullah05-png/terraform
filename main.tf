resource "local_file" "my_world" {
  filename = "sonata.txt"
  content  = "my petname is ${random_pet.petname.id}"
}

resource "random_pet" "petname" {
  prefix    = "MR"
  separator = "."
  length    = "1"
}

output "petname" {
  value = random_pet.petname.id
}
