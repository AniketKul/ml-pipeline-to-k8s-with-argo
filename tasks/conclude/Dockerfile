FROM python:3.7

RUN apt-get update
RUN apt-get install -y libsnappy-dev
RUN pip install fastparquet python-snappy
RUN pip install gensim nltk

RUN python -c "import nltk; nltk.download('punkt')"

COPY run.py /

WORKDIR /