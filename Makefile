SHELL := /bin/bash
VERSION?=latest
TASK_IMAGES:=$(shell find tasks -name Dockerfile -printf '%h ')
