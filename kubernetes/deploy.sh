set +e
echo "${kubeconfig}" > .kube/config
set -e

kubectl apply -f ./task9-3/backend
kubectl apply -f ./task9-3/backend-report
kubectl apply -f ./task9-3/frontend

rm .kube/config