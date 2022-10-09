kubectl delete svc reverseproxy
kubectl delete svc udagram-api-feed
kubectl delete svc udagram-frontend
kubectl delete svc udagram-api-user
kubectl delete svc udagramfrontend
kubectl delete svc udagram-reverseproxy

kubectl apply -f ./udagram-api-user/service.yaml
kubectl apply -f ./udagram-api-feeds/service.yaml
kubectl apply -f ./udagram-frontend/service.yaml
kubectl apply -f ./udagram-reverseproxy/service.yaml


kubectl expose deployment udagram-frontend --type=LoadBalancer --name=udagramfrontend
kubectl expose deployment udagram-reverseproxy --type=LoadBalancer --name=reverseproxy
