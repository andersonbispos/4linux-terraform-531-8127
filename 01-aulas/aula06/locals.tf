locals {
  db_zone = "us-east1-c"

  # atribuir o valor de um parametro de recurso
  /* db_zone = google_compute_disk.dados.zone */
  //atribuir o valor de uma variável
  subnet_name = var.vpc_name
  db_tag = "db"
}