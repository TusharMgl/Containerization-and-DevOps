# Class 2 – Python Docker Application
## Subfolder: python-docker

---

## Objective
To containerize a Python application using Docker, build images using different Dockerfiles, run containers interactively, and analyze image layers.

```

## Step 1 – Python Application (test.py)

```python
import numpy as np

stored_sapid = "500120513"
user_sapid = input("Enter your SAP ID: ")

if user_sapid == stored_sapid:
else:
    print("Not Matched")
```

![Python Code](1.png)

---

## Step 2 – Create Dockerfile

```dockerfile
FROM python:3.10-slim
WORKDIR /test
COPY test.py .
RUN pip install numpy
CMD ["python", "test.py"]
```

![Dockerfile](2.png)

---

## Step 3 – Build Docker Image

Command:
```
docker build -t sapid-checker:500120513 .
```

![Docker Build](3.png)

---

## Step 4 – Run Container (Correct SAP ID)

Command:
```
docker run -it sapid-checker:500120513
```

Output:
Matched

![Matched Output](4.png)

---

## Step 5 – Run Container (Incorrect SAP ID)

Command:
```
docker run -it sapid-checker:500120513
```

Output:
Not Matched

![Not Matched Output](5.png)

---

## Step 6 – Check Image History

Command:
```
docker history sapid-checker:500120513
```

![Docker History](6.png)

---

## Step 7 – Create Alternative Dockerfile (nor.Dockerfile)

```dockerfile
FROM python:3.10-slim
WORKDIR /test
RUN pip install numpy
CMD ["python", "app.py"]
```

![nosrc Dockerfile](7.png)

---

## Step 8 – Build Image Using nor.Dockerfile

Command:
```
docker build -t sapid:1.1 -f nor.Dockerfile .
```

![nosrc Build](8.png)

---

## Step 9 – Run Container with Volume Mount

Command:
```
docker run -it -v ./:/test sapid:1.1
```

![Volume Run](9.png)

---

## Result
Successfully:
- Containerized Python application
- Built Docker image
- Executed container with user input
- Verified correct and incorrect conditions
- Analyzed image layers using docker history
- Demonstrated volume mounting
