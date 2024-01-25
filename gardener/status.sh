#!/usr/bin/env bash

sonobuoy status --json --kubeconfig kubeconfig-$1.yaml | jq
