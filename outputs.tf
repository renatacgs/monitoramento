output "server_name" {
  value       = var.monitoring_server_name
  description = "Nome do servidor simulado"
}

output "alerts_status" {
  value       = "Alertas configurados com sucesso no Prometheus fictício!"
  description = "Estado do sistema de alertas"
}
