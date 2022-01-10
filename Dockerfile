FROM jrottenberg/ffmpeg:4-ubuntu

RUN mkdir /app
WORKDIR /app

COPY . .

ENV PATH="/app:${PATH}"

ENTRYPOINT ["record.sh"]
