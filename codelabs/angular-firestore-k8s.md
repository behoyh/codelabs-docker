summary: Angular Firestore Kubernetes
id: angular-firestore-kubernetes
categories: AFK
tags: AFK
status: Published 
authors: Beshoy Hanna
Feedback Link: https://beshoyhanna.com

# How to Write a Codelab
<!-- ------------------------ -->
## Overview 
Duration: 1


### AFK - The tech stack for lazy devs
Self-replicating blog I whipped up with Angular and Firebase. (Only GitHub clone works so far) The intent is to get this fully self-replicatable so that a user can clone, build a deploy this website to any Kubernetes cluster. Currently the issue is finding a Docker build agent and pushing to Docker Hub, but otherwise Digital Ocean and other cloud providers have the API's needed to deploy right from the client-side site. Example: beshoyhanna.com

<!-- ------------------------ -->
## Prerequisites
Duration: 2

### Prerequisites
* Google Cloud Firestore account
* Docker Hub (or another Docker registry)
* A working Kubernetes cluster AKS, Amzon AKE, GKE, Digital Ocean Kubernetes (DOK)

<!-- ------------------------ -->
## Building
Duration: 3

### Building
###### You'll need Docker installled and a Docker Hub or another docker registry. 

`docker build -rm -f "Dockerfile" -t <version> .`

### Tagging

`docker tag <version> <registry>/<username>/<name>/<version>`
`docker tag <version> <registry>/<username>/<name>/latest`

### Pushing

`docker push <registry>/<username>/<name>/<version>`
`docker push <registry>/<username>/<name>/latest`

