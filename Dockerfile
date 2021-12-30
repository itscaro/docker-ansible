FROM python:3.10

LABEL "maintainer"="Quan TRAN <contact@itscaro.me>"

WORKDIR /source
COPY requirements.txt .
RUN python -m pip install --upgrade pip && \
    pip install -r requirements.txt

ENTRYPOINT ["/bin/bash", "-l", "-c"]
