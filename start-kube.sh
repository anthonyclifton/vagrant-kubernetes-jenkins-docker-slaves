#!/bin/bash
vagrant up

KUBE_JOIN="$(vagrant ssh kub1 -c 'sudo kubeadm token create --print-join-command' | grep "join" | tr -d '\r')"
KUBE_JOIN2="vagrant ssh kub2 -c 'sudo ${KUBE_JOIN}'"
echo "KUBE_JOIN"
echo "${KUBE_JOIN2}"
eval $KUBE_JOIN2