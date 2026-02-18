FROM python:3.10-slim
WORKDIR /test
RUN pip install numpy
CMD ["python", "test.py"]