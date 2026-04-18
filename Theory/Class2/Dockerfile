FROM python:3.10-slim
WORKDIR /test
COPY test.py .
RUN pip install numpy
CMD ["python", "test.py"]