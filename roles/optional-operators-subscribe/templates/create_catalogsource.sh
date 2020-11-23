oc create -f - -o jsonpath='{.metadata.name}' <<EOF
apiVersion: operators.coreos.com/v1alpha1
kind: CatalogSource
metadata:
  generateName: oo-
  namespace: {{ OO_INSTALL_NAMESPACE }}
spec:
  sourceType: grpc
  image: {{ OO_INDEX }}
EOF
