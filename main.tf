# Configuração básica do Terraform
terraform {
  required_providers {
    null = {
      source = "hashicorp/null"
      version = "~> 3.1"
    }
  }
}

# Simula a criação de um servidor para monitoramento
resource "null_resource" "monitoring_server" {
  provisioner "local-exec" {
    command = <<EOT
      echo "Instalando Prometheus e AlertManager..."
      sleep 2
      echo "Configuração concluída! O servidor fictício está pronto para monitoramento."
EOT
  }
}

# Simula a configuração de alertas no Prometheus
resource "null_resource" "prometheus_alert" {
  depends_on = [null_resource.monitoring_server]

  provisioner "local-exec" {
    command = <<EOT
      echo "Configurando alertas no Prometheus..."
      sleep 2
      echo "Alerta: Uso de CPU acima de 80% configurado!"
EOT
  }
}

# Output para mostrar o progresso da simulação
output "monitoring_status" {
  value = "Simulação de monitoramento configurada com sucesso!"
}
