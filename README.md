# Why?

# What?

# How?

https://thenewstack.io/how-to-deploy-a-kubernetes-cluster-with-ubuntu-server-18-04/
https://www.thisprogrammingthing.com/2015/multiple-vagrant-vms-in-one-vagrantfile/

  514  vagrant ssh kub1 -c 'sudo kubeadm token create --print-join-command'
  515  vagrant ssh kub2 -c 'sudo kubeadm join 10.0.0.10:6443 --token i00z0e.7e43dnt524ba4esu     --discovery-token-ca-cert-hash sha256:1d0d9714ca9f76c9a27673fce30153a3058236bd9f59335a45e9dc71e51e6eea'