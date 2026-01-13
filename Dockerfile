FROM python:3.12-slim
WORKDIR /usr/src/app
RUN chmod 777 /usr/src/app

RUN apt-get -qq install -y bash git wget pv jq python3-dev mediainfo gcc aria2 \
libsm6 libxext6 libfontconfig1 libxrender1 libgl1 ffmpeg

COPY . .
RUN pip3 install --no-cache-dir -r requirements.txt

CMD ["bash","run.sh"]
