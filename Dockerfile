FROM python:3.7-slim

# install
RUN apt-get update \
&& apt-get install apt-utils python3-dev curl gcc g++ make git tzdata docker.io -y

RUN ["/bin/bash", "-c", "bash <(curl -s https://raw.githubusercontent.com/konlpy/konlpy/master/scripts/mecab.sh)"]

CMD ["python"]
