FROM gitpod/workspace-full

# Instalar dependências
USER root

# Atualizar pacotes
RUN apt-get update && apt-get upgrade -y

# Instalar ferramentas úteis
RUN apt-get install -y \
    curl \
    wget \
    git \
    jq \
    vim \
    nano \
    htop \
    net-tools \
    iputils-ping

# Limpar cache
RUN apt-get clean && rm -rf /var/lib/apt/lists/*

# Voltar para o usuário gitpod
USER gitpod