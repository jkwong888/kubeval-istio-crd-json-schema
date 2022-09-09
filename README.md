# kubeval-istio-crd-json-schema

in my pipeline i use with kubeconform with this:
```
kustomize build . | \
  kubeconform \
    -schema-location default \
    -schema-location 'https://raw.githubusercontent.com/jkwong888/kubeval-istio-crd-json-schema/main/schemas/{{ .ResourceKind }}_{{ .ResourceAPIVersion }}.json' \
    -verbose
```

to update, change istio version in the script `update.sh` and run it:
```
./update.sh
```
