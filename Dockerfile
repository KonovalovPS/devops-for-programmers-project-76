FROM redmine:latest

RUN /bin/bash -c "mkdir -p ~/.postgresql && \
    wget 'https://storage.yandexcloud.net/cloud-certs/CA.pem' \
    --output-document ~/.postgresql/root.crt && \
    chmod 0644 ~/.postgresql/root.crt"
