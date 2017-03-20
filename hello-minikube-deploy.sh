#!/usr/bin/env bash

# stop minikube, then start it and run hello-minikube

minikube delete
minikube start --vm-driver=xhyve
kubectl run hello-minikube --image=gcr.io/google_containers/echoserver:1.4 --port=8080
kubectl expose deployment hello-minikube --type=NodePort
minikube service hello-minikube --url
minikube dashboard

