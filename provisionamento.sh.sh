#!/bin/bash

# Função para verificar se o script está sendo executado como root
check_root() {
    if [ "$(id -u)" -ne 0 ]; then
        echo "Este script precisa ser executado como root. Abortando..."
        exit 1
    fi
}

# Função para atualizar o sistema
atualizar_sistema() {
    echo "Atualizando o sistema..."
    sudo apt update -y
    sudo apt upgrade -y
}

# Função para instalar o Apache
instalar_apache() {
    echo "Instalando o Apache..."
    sudo apt install apache2 -y
}

# Função para iniciar o Apache e configurá-lo para iniciar no boot
configurar_apache() {
    echo "Iniciando e habilitando o Apache..."
    sudo systemctl start apache2
    sudo systemctl enable apache2
}

# Função para configurar o firewall
configurar_firewall() {
    echo "Configurando o firewall para permitir tráfego HTTP..."
    sudo ufw allow in "Apache"
}

# Função para verificar o status do Apache
verificar_status() {
    echo "Verificando se o Apache está em execução..."
    sudo systemctl status apache2 --no-pager | grep -i "active"
}

# Função principal do script
main() {
    # Verifica se o script está sendo executado como root
    check_root

    # Atualiza o sistema
    atualizar_sistema

    # Instala o Apache
    instalar_apache

    # Configura o Apache
    configurar_apache

    # Configura o firewall
    configurar_firewall

    # Verifica o status do Apache
    verificar_status

    # Mensagem final
    echo "Servidor web Apache instalado e configurado com sucesso!"
}

# Executa o script principal
main
