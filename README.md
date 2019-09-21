# Deploying Machine Learning pipelines to Kubernetes with Argo

# Introduction

My goal is to leverage Kubernetes-native Argo workflows to deploy machine learning pipeline to kubernetes cluster. With this approach, you don’t even need to care about having a certain version of Python and Luigi installed to orchestrate the pipeline. You just need kubernetes and argo installed in your cluster.

# Pre-requisites:

- Kubernetes 1.9 or later
- Argo Installation Guide: https://argoproj.github.io/docs/argo/demo.html
- kubectl

# Codebase Structure

- `Makefile`: provides easy to use helpers for building images, sending them into the docker repository and running the Argo workflow

- `notebooks.yml`: defines a Kubernetes service and deployment for exploratory Jupyter Lab instance

- `notebooks`: contains individual jupyter notebooks (.ipynb files)

- `pipeline.yaml`: defines our Machine Learning pipeline in the form of the Argo workflow

- `tasks`: contains workflow steps as containers along with their Dockerfiles

- `tasks/init`: defines the base Docker image for other tasks and `requirements.txt`

- `tasks/**/run.py and tasks/**/run.sh`: is an entry point for a given pipeline stage

# How to execute:

- `make start_notebooks` or directly `kubectl apply -f notebooks.yml`