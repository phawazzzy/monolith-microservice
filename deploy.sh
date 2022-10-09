kubectl delete deploy udagram-api-user
kubectl delete deploy udagram-api-feed
kubectl delete deploy udagram-frontend
kubectl delete deploy udagram-reverseproxy


kubectl apply -f ./udagram-api-user/deployment.yaml
kubectl apply -f ./udagram-api-feeds/deployment.yaml
kubectl apply -f ./udagram-frontend/deployment.yaml
kubectl apply -f ./udagram-reverseproxy/deployment.yaml
