variable "person" {
    type = object({ name = string, age = number })
    default = {
      age = 10
      name = "BOB"
    }
}

output "person" {
    value = var.person
}

variable "person_with_address" {
    type = object({ name = string, age = number, address = object({line1 = string, line2 = string, country = string, postcode = string })})
    default = {
      address = {
        country = "India"
        line1 = "Tajmahal"
        line2 = "agra"
        postcode = "110011"
      }
      age = 21
      name = "Jimmy"
    }  
}

output "person_with_address" {
    value = var.person_with_address
  
}