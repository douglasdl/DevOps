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
