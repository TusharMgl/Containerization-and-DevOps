
# Class 5 -- Multistage Docker Build (Hands-on)

## Objective

-   To understand the difference between Single-stage and Multistage
    Docker builds
-   To reduce Docker image size using Multistage builds
-   To compare final image sizes practically

------------------------------------------------------------------------

## Environment Used

-   Host OS: Windows
-   Linux Environment: WSL (Ubuntu 24.04)
-   Container Platform: Docker Engine
-   Terminal: WSL Ubuntu
-   Language Used: C

------------------------------------------------------------------------

## Experiment Execution with Screenshots

### Step 1: Create C Program (hello.c)

C program prints a simple message.

![CreateFiles](img/1.png)

------------------------------------------------------------------------

### Step 2: Create Single Stage Dockerfile

Dockerfile installs GCC and builds the C program inside Ubuntu image.

![CreateFiles](img/2.png)

------------------------------------------------------------------------

### Step 3: Build Single Stage Image

**Command executed:**

``` bash
docker build -t hello-single -f Dockerfile.single .
```

![CreateFiles](img/3.png)
------------------------------------------------------------------------

### Step 4: Check Docker Images (Single Stage)

**Command executed:**

``` bash
docker images
```

![CreateFiles](img/4.png)

------------------------------------------------------------------------

### Step 5: Run Single Stage Container

**Command executed:**

``` bash
docker run hello-single
```

![CreateFiles](img/5.png)

------------------------------------------------------------------------

### Step 6: Create Multistage Dockerfile

Second Dockerfile uses builder stage and final scratch stage.

![CreateFiles](img/6.png)

------------------------------------------------------------------------

### Step 7: Build Multistage Image

**Command executed:**

``` bash
docker build -t hello-multi -f Dockerfile.multi .
```

![CreateFiles](img/7.png)

------------------------------------------------------------------------

### Step 8: Compare Image Sizes

**Command executed:**

``` bash
docker images
```
![CreateFiles](img/8.png)

------------------------------------------------------------------------

### Step 9: Run Multistage Container

**Command executed:**

``` bash
docker run hello-multi
```

![CreateFiles](img/9.png)
------------------------------------------------------------------------

## Result

Single-stage Docker image size was significantly larger because it
contained Ubuntu base image and GCC compiler.

Multistage Docker build produced a very small image by copying only the
compiled binary into a minimal scratch image.

------------------------------------------------------------------------

## Learning Outcome

-   Understood how Docker builds layers
-   Learned the concept of build stage and final stage
-   Compared image sizes practically
-   Learned how Multistage builds optimize production images
