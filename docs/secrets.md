# Secrets

## Docker Hub

```sh
kubectl create secret generic my-secret \
  --from-literal=username=myuser \
  --from-literal=password=mypassword \
  -n s-library
```

## GitHub Commit Status Task

To use the `github-commit-status` task, you need a Kubernetes secret containing a GitHub API token. This token must have permissions for the repository and commit status read & write access. The secret's name should be specified in the Helm values YAML file.

You can create the secret using the following command:

```sh
kubectl create secret generic github-commit-status-token \
  --from-literal=token="MY_TOKEN"
  -n s-library
```

## GitHub Infra Commit

```sh
kubectl create secret generic github-infra-commit \
  --from-literal=token="MY_TOKEN"
  -n s-library
```