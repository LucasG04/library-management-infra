# Secrets

## Docker Hub

```sh
kubectl create secret generic docker-hub-secret \
  --from-literal=username=lucasg04 \
  --from-literal=password=MY_TOKEN \
  -n s-library
```

## GitHub Commit Status

This token must have permission for commit status read & write access.

```sh
kubectl create secret generic github-commit-status-token \
  --from-literal=token="MY_TOKEN"
  -n s-library
```

## GitHub Infra Commit

```sh
kubectl create secret generic github-infra-commit \
  --from-literal=username=lucasg04 \
  --from-literal=password=MY_TOKEN \
  -n s-library
```

## Teams Webhook URL

```sh
kubectl create secret generic teams-notification-webhook-url \
  --from-literal=url="WEBHOOK_URL" \
  -n s-library
```
