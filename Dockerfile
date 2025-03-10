FROM nvidia/cuda:12.2.2-runtime-ubuntu22.04

# Set working directory
WORKDIR /app

# Install system dependencies
RUN apt-get update && apt-get install -y \
    curl \
    git \
    wget \
    ca-certificates \
    && rm -rf /var/lib/apt/lists/*

# Install Ollama
RUN curl -fsSL https://ollama.ai/install.sh | bash

# Expose Ollama API port
EXPOSE 11434

# Set default command
CMD ["bash", "/app/code/start.sh"]
