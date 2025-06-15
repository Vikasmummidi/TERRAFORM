locals {
  characters = ["luke", "yoda", "darth"]
  enemies_destroyed = [4252, 900, 20000056894]

  map = {
    for index, character in local.characters : # Convert character list to a set
      character => local.enemies_destroyed[index]
  }
}

output "sample" {
  value = local.map
}