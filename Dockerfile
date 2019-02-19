FROM google/cloud-sdk:226.0.0-alpine

COPY entrypoint.sh /

RUN apk --no-cache add mysql-client rsync mariadb-backup && \
    chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
