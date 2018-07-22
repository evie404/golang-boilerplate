# Datadog Agent

## Setting up API Key secret

```
kubectl create secret generic datadog --from-literal=api-key=<API KEY> --namespace=kube-system
```

## Setting up components

```
kubectl apply --filename=infra/datadog-agent/. --recursive
```
