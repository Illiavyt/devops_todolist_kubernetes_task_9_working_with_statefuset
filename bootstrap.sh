#!/bin/bash

# Creating kind cluster
kind create cluster --config cluster.yml

# Applying MySQL StatefulSet
kubectl apply -f statefulSet.yml

# Deploying Django ToDo app
kubectl apply -f deployment.yml

# Done! Check resources with:
echo "kubectl get pods -A"
