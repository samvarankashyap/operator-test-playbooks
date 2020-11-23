oc {{ OG_OPERATION }} -f - -o jsonpath='{.metadata.name}' <<EOF
apiVersion: operators.coreos.com/v1
kind: OperatorGroup
metadata:
  {{ OG_NAMESTANZA }}
  namespace: {{ OO_INSTALL_NAMESPACE }}
spec:
  targetNamespaces: [{{ OO_TARGET_NAMESPACES }}]
EOF
