# Deploying Machine Learning pipelines to Kubernetes with Argo

# Introduction

My goal is to leverage Kubernetes-native Argo workflows to deploy machine learning pipeline to kubernetes cluster. With this approach, you don’t even need to care about having a certain version of Python and Luigi installed to orchestrate the pipeline. You just need kubernetes and argo installed in your cluster.

# Pre-requisites:

- Kubernetes 1.9 or later
- Argo Installation Guide: https://argoproj.github.io/docs/argo/demo.html
- kubectl


# How to execute:

- `make start_notebooks` or directly `kubectl apply -f notebooks.yml`
- 
