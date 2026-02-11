FROM public.ecr.aws/docker/library/python:3.13.11-alpine
WORKDIR /usr/src/app
EXPOSE 8080
COPY . .
RUN python3 -m pip install --upgrade pip==26.0.1 setuptools==69.5.1 --no-cache-dir && \
    python3 -m pip install --no-cache-dir -r requirements.txt && \
    python3 -m pip install --no-cache-dir .
CMD ["python3", "./server.py"]
