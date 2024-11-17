### GitHub Commit Status Task

To use the `github-commit-status` task, you need a Kubernetes secret containing a GitHub API token. This token must have permissions for the repository and commit status read & write access. The secret's name should be specified in the Helm values YAML file.

You can create the secret using the following command:

```sh
kubectl create secret generic github-commit-status-token --from-literal=token="MY_TOKEN"
```