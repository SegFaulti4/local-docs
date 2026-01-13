FROM python:3.11-trixie

WORKDIR /app
RUN git clone https://github.com/fastapi/fastapi.git && git --git-dir=fastapi/.git checkout 983f1d3
RUN pip install -r requirements-docs.txt
WORKDIR docs/en

CMD ["mkdocs", "serve"]
