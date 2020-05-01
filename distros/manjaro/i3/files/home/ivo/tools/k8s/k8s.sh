CLUSTER_NAME=$1
aws eks update-kubeconfig --name $CLUSTER_NAME --kubeconfig ~/.kube/$CLUSTER_NAME
export KUBECONFIG=$HOME/.kube/$CLUSTER_NAME

