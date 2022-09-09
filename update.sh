#!/bin/bash

ISTIO_VERSION=1.14.3

wget https://raw.githubusercontent.com/istio/istio/${ISTIO_VERSION}/manifests/charts/base/crds/crd-all.gen.yaml 

./openapi2jsonschema.py crd-all.gen.yaml

mv *.json schemas
rm -f crd-all.gen.yaml
