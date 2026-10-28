# byte_length = 3 genera un valor hexadecimal de exactamente 6 caracteres
resource "random_id" "randomness" {
  byte_length = 3
}

locals {
  prefijo_general = "eva2-${random_id.randomness.hex}"

  tags_globales = {
    Ambiente  = "Evaluacion2"
    Prefijo   = local.prefijo_general
    Random    = random_id.randomness.hex
    CreadoPor = "Terraform"
  }

}