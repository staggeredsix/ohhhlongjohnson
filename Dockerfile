FROM nvidia/cuda:12.2.2-runtime-ubuntu22.04

WORKDIR /app

RUN apt-get update && apt-get install -y \
    curl \
    git \
    wget \
    ca-certificates \
    && rm -rf /var/lib/apt/lists/*

RUN curl -fsSL https://ollama.ai/install.sh | bash

EXPOSE 11434

CMD ["ollama", "serve"]
