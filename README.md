[![CircleCI](https://dl.circleci.com/status-badge/img/gh/ismail-30/Operationalize-a-Machine-Learning-Microservice-API/tree/master.svg?style=svg)](https://dl.circleci.com/status-badge/redirect/gh/ismail-30/Operationalize-a-Machine-Learning-Microservice-API/tree/master)

## Project Overview

In this project, you will apply the skills you have acquired in this course to operationalize a Machine Learning Microservice API. 

You are given a pre-trained, `sklearn` model that has been trained to predict housing prices in Boston according to several features, such as average rooms in a home and data about highway access, teacher-to-pupil ratios, and so on. You can read more about the data, which was initially taken from Kaggle, on [the data source site](https://www.kaggle.com/c/boston-housing). This project tests your ability to operationalize a Python flask app—in a provided file, `app.py`—that serves out predictions (inference) about housing prices through API calls. This project could be extended to any pre-trained machine learning model, such as those for image recognition and data labeling.

### Project Tasks

Your project goal is to operationalize this working, machine learning microservice using [kubernetes](https://kubernetes.io/), which is an open-source system for automating the management of containerized applications. In this project you will:
* Test your project code using linting
* Complete a Dockerfile to containerize this application
* Deploy your containerized application using Docker and make a prediction
* Improve the log statements in the source code for this application
* Configure Kubernetes and create a Kubernetes cluster
* Deploy a container using Kubernetes and make a prediction
* Upload a complete Github repo with CircleCI to indicate that your code has been tested

You can find a detailed [project rubric, here](https://review.udacity.com/#!/rubrics/2576/view).

**The final implementation of the project will showcase your abilities to operationalize production microservices.**

---
This project contains the following:

- Linting the project code.
- Using Docker to containerize the application.
- Deploying the containerized application with prediction functionality.
- Installing Kubernetes and Minikube.
- Configuring Kubernetes and creating a Kubernetes cluster.
- Deploying a container with prediction functionality using Kubernetes.


## Requirements
* Python 3
* Docker
* Kubernetes
* Minikube

## Setup the Environment
- Create a virtualenv and activate it
- install the necessary dependencies: `make install`
- Optional: Running app.py in standalone mode: `python app.py`
- Linting project codes, this step is done in circle ci: `make lint`
- Run applicaion with docker, this will create a docker container and run the app: `./run_docker.sh`
- Upload docker image to docker hub: `./upload_docker.sh`. Need to change dockerpath and docker ID in upload_docker.sh

## Configure Kubernetes to Run locally
- `minikube start`
- `kubectl get pod`
- After pod status change to Running, run the following: `./run_kubernetes.sh`
- In order to make a prediciton via Docker or Kubernetes, run `./make_prediction.sh`

## Files
- config.yml: CircleCI configuration yaml file.
- Makefile: includes instructions for setup, install, test and lint.
- app.py: Python API application using Flask.
- Dockerfile: Dockerfile to build docker image and expose port 80
- run_docker.sh: Shell script to run Docker, locally.
- upload_docker.sh: Shell script to upload Docker image.
- run_kubernetes.sh: Shell script to run the app with kubernetes.
- make_prediction.sh: Shell script to test flask app locally.

