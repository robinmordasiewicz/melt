#!/bin/bash
#

echo "deploy melt container"

kubectl apply -f deployment.yaml --namespace r-mordasiewicz

echo "kubectl exec --namespace r-mordasiewicz -it melt -c melt -- /bin/bash"
