## Testing the EventListener

To test the EventListener, create a `curl` pod:

```sh
kubectl run curl-pod --image=curlimages/curl:latest --restart=Never -- sleep 3600
```

Open a shell inside the pod and make a POST request:

```sh
curl el-frontend.s-library.svc.cluster.local:8080 -X POST --data '{"repository_url":"https://github.com/LucasG04/library-management-frontend.git","repository_branch":"main"}'
```