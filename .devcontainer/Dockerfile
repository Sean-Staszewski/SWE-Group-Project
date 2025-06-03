FROM mcr.microsoft.com/vscode/devcontainers/javascript-node:20


RUN apt-get update && \
    apt-get install -y --no-install-recommends \
        python3 \
        python3-pip \
        python3-venv \
        ca-certificates && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

RUN npm install -g nodemon

RUN ln -s /usr/bin/python3 /usr/bin/python || true

WORKDIR /workspace

CMD ["sleep", "infinity"]


