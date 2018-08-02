# Datadog Agent

## Setting up API Key secret

```
kubectl create secret generic datadog --from-literal=api-key=<API KEY> --namespace=kube-system
```

## Setting up components

```
bazel run //infra/datadog-agent:all.apply
```
