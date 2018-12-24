FROM ubuntu:18.10

RUN apt-get update && apt-get upgrade -y

RUN apt install webhttrack httrack -y

ENTRYPOINT ["httrack"]
