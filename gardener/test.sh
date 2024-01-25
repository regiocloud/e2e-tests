#!/usr/bin/env bash

SONOBUOY=./sonobuoy

export cloud=$1

$SONOBUOY run --mode certified-conformance --wait --wait-output progress --kubeconfig kubeconfig-$cloud.yaml

results=$($SONOBUOY retrieve --kubeconfig kubeconfig-$cloud.yaml)
$SONOBUOY results $results
