kubectl delete deployment server
kubectl delete service redashserver-svc
kubectl apply -f redashserver-deploy.yaml
kubectl apply -f redashserver-svc.yaml
