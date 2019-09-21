SHELL := /bin/bash
VERSION?=latest
TASK_IMAGES:=$(shell find tasks -name Dockerfile -printf '%h ')
REGISTRY=hub.docker.com

tasks/%: FORCE
	set -e ;\
	docker build -it ml_pipeline_with_argo:$(VERSION) $@ ;\
	docker tag ml_pipeline_with_argo:$(VERSION) $(REGISTRY)/ml_pipeline_with_argo:$(VERSION) ;\
	docker push $(REGISTRY)/ml_pipeline_with_argo:$(VERSION)

images: $(TASK_IMAGES)

run: images
		argo submit pipeline.yaml --watch

start_notebooks:
		kubectl apply -f notebooks.yaml

stop_notebooks:
		kubectl delete deployment jupyter-notebook

FORCE: ;
