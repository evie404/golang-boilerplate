# Datadog Agent

## Setting up API Key secret

Get API key [here](https://app.datadoghq.com/account/settings#api).

```
kubectl create secret generic datadog  --namespace=kube-system --from-literal=api-key=<API KEY>
```

## Setting up components

```
bazel run //infra/datadog-agent:all.apply
```
