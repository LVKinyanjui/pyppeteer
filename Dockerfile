FROM ubuntu:22.04

WORKDIR /app

RUN apt update \
    && apt install -y wget

RUN wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | apt-key add - \
        echo 'deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main' | tee /etc/apt/sources.list.d/google-chrome.list \
        apt update \
        apt install google-chrome-stable \
        && rm -rf /var/lib/apt/lists/*

CMD ["sleep", "infinity"]


