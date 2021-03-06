FROM mysql:8.0

RUN apt-get update -y \
    && apt-get install curl --no-install-recommends -y \
    && echo "deb [signed-by=/usr/share/keyrings/cloud.google.gpg] http://packages.cloud.google.com/apt cloud-sdk main" | tee -a /etc/apt/sources.list.d/google-cloud-sdk.list \
    && curl https://packages.cloud.google.com/apt/doc/apt-key.gpg | apt-key --keyring /usr/share/keyrings/cloud.google.gpg  add - \
    && apt-get install gzip --no-install-recommends -y \
    && apt-get install google-cloud-sdk --no-install-recommends -y \
    && apt-get install rsync --no-install-recommends -y \
    && apt-get clean && rm -rf /var/lib/apt/lists/*
