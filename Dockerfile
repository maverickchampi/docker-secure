FROM node:20-slim

# Instala herramientas útiles
RUN apt-get update && apt-get install -y \
    git curl vim net-tools lsof strace procps\
    && apt-get clean && rm -rf /var/lib/apt/lists/*

# Crea usuario sin privilegios
RUN useradd -ms /bin/bash tester

# Crea carpeta de trabajo y asigna permisos
WORKDIR /workspace
RUN chown tester:tester /workspace

# Copia el script y da permisos
COPY bootstrap.sh /usr/local/bin/bootstrap.sh
RUN chmod +x /usr/local/bin/bootstrap.sh

# Cambia a usuario no privilegiado (al final)
USER tester

EXPOSE 3000
EXPOSE 5173

CMD ["/bin/bash"]
