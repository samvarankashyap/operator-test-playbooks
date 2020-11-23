oc create -f - -o jsonpath='{.metadata.name}' <<EOF
apiVersion: operators.coreos.com/v1alpha1
kind: Subscription
metadata:
  generateName: oo-
  namespace: {{ OO_INSTALL_NAMESPACE }}
spec:
  name: {{ OO_PACKAGE }}
  channel: "{{ OO_CHANNEL }}"
  source: {{ CATSRC }}
  sourceNamespace: {{ OO_INSTALL_NAMESPACE }}
EOF
