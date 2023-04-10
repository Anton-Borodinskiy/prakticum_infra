set +e
echo "${kubeconfig}" > .kube/config
set -e

kubectl apply -f ./kubernetes/backend
kubectl apply -f ./kubernetes/backend-report
kubectl apply -f ./kubernetes/frontend

rm .kube/config