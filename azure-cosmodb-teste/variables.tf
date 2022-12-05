variable "resource_group" {
  type    = string
  default = "cosmo-db-group"
}

variable "nome_db" {
  description = "nome do banco de dados que será criado"
  type        = string
  default     = "zaimabank"
  # sensitive = true
}

variable "location" {
  description = "local na qual o banco será criado"
  type        = string
  default     = "Brazil South"
}

variable "conta_db" {
  description = "nome da conta que será usada"
  type        = string
  default     = "tfex-Jean-db-"
}