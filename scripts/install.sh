#!/bin/bash
      sudo apt update 
      apt install ansible python3 -y
      cd /tmp/scripts/ansible/
      #ansible-playbook -i inventory --connection=local --inventory 127.0.0.1, playbook.yaml
      ansible-playbook -c local -i localhost, playbook.yaml
      curl -sfL https://get.k3s.io | sh -
      curl https://raw.githubusercontent.com/helm/helm/main/scripts/get-helm-3 | bash
      export KUBECONFIG=/etc/rancher/k3s/k3s.yaml
      
      echo -e "VALIDANDO CONFIGURAÇÃO"
      kubectl get pods --namespace kube-sy