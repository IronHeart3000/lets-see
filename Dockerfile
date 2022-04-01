FROM python:3.9.7-slim-buster

RUN mkdir /Bot && chmod 777 /Bot

WORKDIR /Bot

ENV DEBIAN_FRONTEND=noninteractive

COPY . .

RUN apt-get update && apt upgrade -y && apt-get install sudo apt-utils -y

RUN apt-get install -y \
    bash \
    gcc \
    zip \ 
    wget \
    wkhtmltopdf \
    neofetch \
    mediainfo \
    git \
    jq \
    unzip \
    python3-dev

RUN apt-get install -y  libavformat-dev libavcodec-dev libavdevice-dev libavutil-dev libswscale-dev libswresample-dev libavfilter-dev ffmpeg

RUN bash run.sh

CMD ["python3", "main.py"]
