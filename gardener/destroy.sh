#!/usr/bin/env bash

export cloud=$1

KUBECONFIG=kubeconfig.yaml kubectl annotate confirmation.gardener.cloud/deletion=true -f $cloud/deployment.yaml
KUBECONFIG=kubeconfig.yaml kubectl delete -f $cloud/deployment.yaml

rm -f kubeconfig-$cloud.yaml
rm -f *_sonobuoy_*.tar.gz
