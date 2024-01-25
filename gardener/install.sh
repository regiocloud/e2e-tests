#!/usr/bin/env bash

VERSION=0.56.16

wget https://github.com/vmware-tanzu/sonobuoy/releases/download/v${VERSION}/sonobuoy_${VERSION}_linux_amd64.tar.gz
tar xvzf sonobuoy_${VERSION}_linux_amd64.tar.gz sonobuoy
rm sonobuoy_${VERSION}_linux_amd64.tar.gz
