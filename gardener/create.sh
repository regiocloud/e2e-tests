#!/usr/bin/env bash

export cloud=$1
export KUBECONFIG=kubeconfig.yaml

kubectl apply -f $cloud/deployment.yaml
while [[ $(kubectl get shoots $cloud -o json | jq -r '.metadata.labels["shoot.gardener.cloud/status"]') != "healthy" ]]; do echo "$(date) - waiting for shoot" && sleep 10; done
while [[ $(kubectl get shoots $cloud -o json | jq -r '.status.conditions | .[].status' | xargs -n1 -I {} bash -c "if [[ '{}' != True ]]; then echo False; fi")  =~ False ]]; do echo "$(date) - waiting for shoot" && sleep 10; done
kubectl get secret $cloud.kubeconfig -o json | jq -r .data.kubeconfig | base64 -d > kubeconfig-$cloud.yaml
