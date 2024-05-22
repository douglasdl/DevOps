# DevOps

## Culture
### Context of a world without DevOps
- Company without DevOps
  - Development: Frontend, Backend and Mobile.
  - Operations: Infra.
  - Knowledge Centralization.
  - Lack of Feedback.
  - No Continuous learning.
  - No Automatization.
### What is the DevOps idea
### DevOps in everyday life and SRE
   - SRE: Site Reliability Engineer
### Hero Person Syndrome

## CALMS
Culture, Automation, Lean, Measurement, and Sharing
### Adopting the DevOps Culture
CALMS is a framework that assesses a company's ability to adopt DevOps processes, as well as a way of measuring success during a DevOps transformation.

### Automating everything
CI/CD, test codes, dependencies installation, auto build/deploy, IAC, GitOps. Unique true sources.

### Focusing on value and making mistakes fast
Lean. Quick deliveries with high value. Focus on high value activities. MVP. Split macro ideas into micro deliveries. Evaluate the micro deliveries results and feedbacks to determine the next steps.
Make mistake fast, to be able to correct and improve faster.
Identify the errors to fix before the clients complaints.

### Metrifying and decentralizing knowledge
Measure and Share the knowledge.
Data oriented decisions. Evaluate the most accessed areas of your apps by the clients.
Follow up metrics to improve and fix problems.
Share with the team the knowledge of applied technologies, errors, lessons learned, etc.
Evaluate tif current products has these metrics tools, dashboards etc.

### Knowing the three ways
From the Book the Phenix Project that talks about the behaviors and patherns of the DevOps.
Focus on Implementation:

  1. Business (Dev) -> Customer (Ops)
     - Quick work flow
     - Visibility Focus
     - Continuous Optimizations
     - Short Intervals
     - Automatization
  
  2. Business (Dev) -> Customer (Ops) -> Business (Dev)
     - Fast and continuous feedback
     - Error detections
     - Faster recoveries
       
  3. Business (Dev) -> Customer (Ops) -> Business (Dev)
     - Productivity focus
     - Organization learning
     - Locals and Globals features
     

## 

- [Docker Hub](https://hub.docker.com/)



## Commands

1) Build the image:
```sh
docker build -t api-rocket .
```

2) List the created image:
```sh
docker image ls api-rocket
```

3) Check the image history:
```sh
docker image history api-rocket
```

4) Run the container:
  (--rm delete the container on stop)
  (-p port numbers docker:application)
```sh
docker run --rm -p 3000:3000 api-rocket
```
4) Run the container:
  (-d detach the container to run in background)
```sh
docker run -p 3000:3000 -d api-rocket
```
4) Run the container:
(Add tag after the container name)
```sh
docker run -p 3000:3000 -d api-rocket:v1
```

5) List the running containers:
```sh
docker ps
```

6) Stop a running container by its ID:
```sh
docker stop <id-hash>
```

7) Start a container by its ID:
```sh
docker start <id-hash>
```
 
8) See the logs from a background running container: 
```sh
docker logs <id-hash>
```

9) Display detailed information on one or more container:
```sh
docker network inspect <container-id>
# or
docker network inspect <container-name>
```

### Network

## Commands

1) List available commands:
```sh
docker network
```

2) List networks:
```sh
docker network ls
```

3) Create a network:
```sh
docker network create <network-name>
```

4) Connect a container to a network:
```sh
docker network connect <network-id> <container-id>
# or
docker network connect <network-name> <container-name>
```
5) Display detailed information on one or more networks:
```sh
docker network inspect <network-id>
# or
docker network inspect <network-name>
```

6) Run the container specifying the network:
```sh
docker run --network=<network-id> -p 3000:3000 -d api-rocket:v1
```

### Volumes

## Commands

1) Open the virtual directory:
```sh
docker exec -it <container-id> bash
#or
docker exec -it <container-id> sh
```

2) Close the virtual directory:
```sh
exit
```

3) List available commands:
```sh
docker volume
```

4) Create a volume:
```sh
docker volume create <volume-name>
```

5) Display detailed information on one or more volumes:
```sh
docker volume inspect <volume-name>
```

6) Run the container specifying the volume:
```sh
docker run -v <volume-name>:/usr/src/app --network=<network-id> -p 3000:3000 -d api-rocket:v1
docker run -v primeiro-volume:/usr/src/app --network my-network -p 3000:3000 -d api-rocket:v1
```

7) Persisting data in the volumes:

### Alpine

tag: 18-alpine3.19


### Multiple Stages Containers

### Multiple Containers

-Using database
```sh
docker pull mysql:8
docker run -d -p 3306:3306 -e MYSQL_ROOT_PASSWORD=root -e MYSQL_DATABASE=rocketseat-db -e MYSQL_USER=admin -e MYSQL_PASSWORD=root --name mysql mysql:8 
```

- Need to connet both in the same network.

## Docker Compose

Check installed version:
```sh
docker-compose -v
```

Run the "docker-compose.yaml":
```sh
docker-compose up
```
