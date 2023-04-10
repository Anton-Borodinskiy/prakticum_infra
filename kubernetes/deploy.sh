#!/bin/bash
set +e

mkdir -p .kube/

echo "$KUBECONFIG" > .kube/config

kubectl apply -f ./kubernetes/backend
kubectl apply -f ./kubernetes/backend-report
kubectl apply -f ./kubernetes/frontend

#rm .kube/config