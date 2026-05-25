FROM public.ecr.aws/docker/library/python:3.13.13-alpine
WORKDIR /usr/src/app
EXPOSE 8080
COPY . .
RUN python3 -m pip install --upgrade pip==26.1.1 setuptools==82.0.1 --no-cache-dir && \
    python3 -m pip install --no-cache-dir -r requirements.txt && \
    python3 -m pip install --no-cache-dir .
CMD ["python3", "./server.py"]
