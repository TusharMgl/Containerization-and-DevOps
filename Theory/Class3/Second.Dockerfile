FROM eclipse-temurin:17-jdk
WORKDIR /home/app
COPY Hello.java .
RUN javac Hello.java
CMD ["echo", "Hello from version 2"]