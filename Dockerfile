FROM node:20-slim

# Instala herramientas útiles para análisis
RUN apt-get update && apt-get install -y \
    git curl vim net-tools lsof strace \
    && apt-get clean

# Crea un usuario sin privilegios
RUN useradd -ms /bin/bash tester
USER tester

WORKDIR /workspace

COPY bootstrap.sh /usr/local/bin/bootstrap.sh
RUN chmod +x /usr/local/bin/bootstrap.sh

# Expone puertos útiles para pruebas
EXPOSE 3000
EXPOSE 5173

CMD ["/bin/bash"]