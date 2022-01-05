![Kubernetes](https://i0.wp.com/www.cienciaedados.com/wp-content/uploads/2018/04/Kubernetes-Pods-Nodes-Containers-e-Clusters.png?fit=850%2C440&ssl=1)


# k8s-Chalange - Desafio de Deploy de Projeto

pre-req :
```
Utilizar monorepo para conseguir criar um ambiente referente a um projeto.
Subindo vagrant - https://github.com/rosthansilva/k8s-Chalange/blob/main/vagrant.md
```

A empreza xpto tem uma aplicação e quer roda-la no kubernetes, essa aplicação precisa ser monitorada e 
seus builds devem ter um padrão de qualidade garantido. Esse padrão deve-se ser comprovado com monitoração e métricas de build. A aplicação deve ser em Java ou .net ( Generico, pode somente mostrar um dado no front).

- Ci - jenkins
- Monitoração - Prometheus
- Linguagem - Go, Python, .Net ou Java para a aplicação
- Dashboard - Grafana

## Nesse desafio deve-se concluir as seguintes tarefas :

### Manipulação WebServervice no Kubernetes
- Verifique o kubectl na vm do vagrant.
- Criar um namespace para um webserver com o nome web-ns.
- Fazer de deploy do nginx no namespace web-ns.
- Criar um service e um ingress para o nginx apontando o endereço web.ns.local ( Utilize o que quiser para resolver o nome).

### Deploy com Jenkins
- Intale o helm no kubernetes 
- Faça deploy do jenkins no kubernetes com um helmchart.
- Habilite a monitoração de metricas prometheus no jenkins.
- Faça deploy do prometheus no Kubernetes.
- Faça deploy do grafana no kubernetes.


## Jenkins e Pipelines 

- Crie uma aplicação simples em qualquer linguagem.
- Habilite a coleta de dados com Prometheus. 
- Crie uma pipeline que faça CI e CD e que seja uma multibranch pipeline no jenkins. 
- Crie os branchs dev, stage e prod no git e namespaces de mesmo nome no kubernetes.  
- Habilite confirmação humana para o deploy no Ns de prod.
- Colete as metricas com o prometheus.
- Faça deploy do grafana, conecte o prometheus e crie uma dashboard com os dados dos builds do Jenkins.
- Teste o processo de continuidade do build com webhook e valide acoleta das metricas.


### Dados em aberto :
- Qual aplicação fazer deploy ? 
  - Qualquer uma, quanto mais simples melhor
- Quais Metricas coletar ?
  - Me surpreenda pfvr
- Como acesso a máquina do varant ?
  - vagrant ssh k8s 

