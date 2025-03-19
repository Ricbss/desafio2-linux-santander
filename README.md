# desafio2-linux-santander

# Provisionamento Automático de Servidor Web Apache

Este repositório contém um script de Bash que automatiza o processo de provisionamento de um servidor web Apache em uma máquina Linux. O script realiza as seguintes etapas:

1. Atualiza o sistema.
2. Instala o servidor web Apache.
3. Inicia o Apache e configura para iniciar automaticamente no boot.
4. Configura o firewall para permitir o tráfego HTTP.
5. Verifica o status do Apache para garantir que ele está em funcionamento.

## Propósito

O objetivo deste script é facilitar a configuração de um servidor web Apache, automatizando a instalação e configuração do Apache, além de garantir que o servidor esteja acessível na rede. Esse processo é ideal para situações onde você deseja provisionar rapidamente servidores para hospedar sites, APIs ou outras aplicações baseadas na web.

## Pré-requisitos

Para executar este script, é necessário ter:
- Acesso root ou sudo no servidor.
- Uma máquina rodando uma distribuição Linux (Ubuntu, Debian, etc.).
- O `ufw` (Uncomplicated Firewall) instalado no sistema para configurar o firewall.

## Como usar

### Passo 1: Baixar o repositório

Você pode baixar o repositório usando Git ou fazer o download do arquivo diretamente.

Para clonar o repositório via Git:

```bash
git clone https://github.com/seu-usuario/nome-do-repositorio.git
cd nome-do-repositorio
