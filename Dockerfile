FROM python:3.11-trixie

WORKDIR /app
RUN git clone https://github.com/fastapi/fastapi.git && \
    cd fastapi && \
    git checkout 983f1d3 && \
    sed -i 's/^pillow.*/pillow/' requirements-docs.txt && \
    pip install -r requirements-docs.txt
WORKDIR /app/fastapi/docs/en

CMD ["mkdocs", "serve", "--no-livereload"]
