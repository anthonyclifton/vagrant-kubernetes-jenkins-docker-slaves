#!/bin/bash
vagrant up

vagrant ssh kub1 --command 'sudo kubeadm init --pod-network-cidr=10.0.0.0/24' | grep 'kubeadm'