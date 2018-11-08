kubectl delete deployment postgres-deploy
kubectl delete service postgres-svc
kubectl apply -f postgres-deploy.yaml
kubectl apply -f postgres-svc.yaml
