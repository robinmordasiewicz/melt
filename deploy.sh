#!/bin/bash
#

echo "deploy mlt container"

kubectl apply -f deployment.yaml --namespace r-mordasiewicz

echo "kubectl exec --namespace r-mordasiewicz -it mlt -c mlt -- /bin/bash"
