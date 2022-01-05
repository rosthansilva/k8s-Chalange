# Vagrant Kube 
Esse repo Cria um ambiente com Vagrant em Hosts Windows com Kubernetes

# Como utilizar o repositório

1.	habilitar HyperV caso vá instalar no Windows - Dentro da pasta Scripts existe um sctipt de ativação do Hyperv.

Manualmente :

```
# Abra o Powershell como administrador
Set-ExecutionPolicy Unrestricted
Enable-WindowsOptionalFeature -Online -FeatureName Microsoft-Hyper-V -All

```
Ou instale o Virtualbox no windows ( https://www.virtualbox.org )

```
#Instale no Ubuntu
apt-get install virtualbox virtualbox—ext–pack -y

```
2.	Instale o [Vagrant](https://www.vagrantup.com/downloads) no Windows e depois Reboot seu PC 

3.	Após reboot, vá até a pasta onde esta os arquivos do Vagrant e digite vagrant up

```
# SENIORSOLUTION+rosthan.silva at SINSAON1631 in /f/rosthansilva/REPOS/Kube-Vagrant on git:master ✖︎ [20:20:27]
→ vagrant provision
==> k8s: Running provisioner: file...
    k8s: scripts => /tmp/scripts
==> k8s: Running provisioner: shell...
    k8s: Running: inline script
    k8s: 
    k8s: WARNING: apt does not have a stable CLI interface. Use with caution in scripts.
    k8s:
    k8s: Hit:1 http://security.debian.org/debian-security buster/updates InRelease
    k8s: Hit:2 http://deb.debian.org/debian buster InRelease
    k8s: Hit:3 http://deb.debian.org/debian buster-updates InRelease
    k8s: Hit:4 http://deb.debian.org/debian buster-backports InRelease
    k8s: Hit:5 https://download.docker.com/linux/debian stretch InRelease
    k8s: Reading package lists...
    k8s: Building dependency tree...
    k8s: Reading state information...
    k8s: All packages are up to date.
    k8s: 
    k8s: WARNING: apt does not have a stable CLI interface. Use with caution in scripts.
    k8s:
    k8s: Reading package lists...
    k8s: Building dependency tree...
    k8s: Reading state information...
    k8s: ansible is already the newest version (2.7.7+dfsg-1+deb10u1).
    k8s: python3 is already the newest version (3.7.3-1).
    k8s: 0 upgraded, 0 newly installed, 0 to remove and 0 not upgraded.
    k8s: 
    k8s: PLAY [Configuração de Docker em Host Debian Buster] ****************************
    k8s: 
    k8s: TASK [Gathering Facts] *********************************************************
    k8s: ok: [localhost]
    k8s:
    k8s: TASK [TASK 01 - ATUALIZA O INDEX DE PACOTES] ***********************************
    k8s: ok: [localhost]
    k8s: 
    k8s: TASK [TASK 02 - ATUALIZA SISTEMA OPERACIONAL E INSTALA DEPENDENCIAS] ***********
    k8s: ok: [localhost]
    k8s: 
    k8s: TASK [TASK 03 - BAIXA REPOSITÓRIO] *********************************************
    k8s: ok: [localhost]
    k8s: 
    k8s: TASK [TASK 04 - INSTALA REPOSITÓRIO] *******************************************
    k8s: ok: [localhost]
    k8s: 
    k8s: TASK [TASK 04 - LIMPA CACHE DE REPOSITÓRIO] ************************************
    k8s: ok: [localhost]
    k8s: 
    k8s: TASK [TASK 05 - INSTALA DOCKER NA MÁQUINA] *************************************
    k8s: ok: [localhost]
"delta": "0:00:00.002693", "end": "2021-12-21 20:29:42.965800", "msg": "non-zero return code", "rc": 127, "start": "2021-12-21 20:29:42.963107", "stderr": "sh: 0: Can't open curl", "stderr_lines": ["sh: 0: Can't open curl"], "stdout": "", "stdout_lines":

# SENIORSOLUTION+rosthan.silva at SINSAON1631 in /f/rosthansilva/REPOS/Kube-Vagrant on git:master ✖︎ [20:35:50]
→ vagrant provision
==> k8s: Running provisioner: file...
    k8s: scripts => /tmp/scripts
==> k8s: Running provisioner: shell...
    k8s: Running: inline script
    k8s: 
    k8s: WARNING: apt does not have a stable CLI interface. Use with caution in scripts.
    k8s: 
    k8s: Hit:1 http://security.debian.org/debian-security buster/updates InRelease
    k8s: Hit:2 http://deb.debian.org/debian buster InRelease
    k8s: Get:3 http://deb.debian.org/debian buster-updates InRelease [51.9 kB]
    k8s: Hit:4 https://download.docker.com/linux/debian stretch InRelease
    k8s: Get:5 http://deb.debian.org/debian buster-backports InRelease [46.7 kB]
    k8s: Get:6 http://deb.debian.org/debian buster-backports/main Sources.diff/Index [27.8 kB]
    k8s: Get:7 http://deb.debian.org/debian buster-backports/main amd64 Packages.diff/Index [27.8 kB]
    k8s: Get:8 http://deb.debian.org/debian buster-backports/main Sources 2021-12-21-2001.16.pdiff [319 B]
    k8s: Get:8 http://deb.debian.org/debian buster-backports/main Sources 2021-12-21-2001.16.pdiff [319 B]
    k8s: Get:9 http://deb.debian.org/debian buster-backports/main amd64 Packages 2021-12-21-2001.16.pdiff [1472 B]
    k8s: Get:9 http://deb.debian.org/debian buster-backports/main amd64 Packages 2021-12-21-2001.16.pdiff [1472 B]
    k8s: Fetched 156 kB in 1s (119 kB/s)
    k8s: Reading package lists...
    k8s: Building dependency tree...
    k8s: Reading state information...
    k8s: All packages are up to date.
    k8s: 
    k8s: WARNING: apt does not have a stable CLI interface. Use with caution in scripts.
    k8s:
    k8s: Reading package lists...
    k8s: Building dependency tree...
    k8s: Reading state information...
    k8s: ansible is already the newest version (2.7.7+dfsg-1+deb10u1).
    k8s: python3 is already the newest version (3.7.3-1).
    k8s: 0 upgraded, 0 newly installed, 0 to remove and 0 not upgraded.
    k8s: 
    k8s: PLAY [Configuração de Docker em Host Debian Buster] ****************************
    k8s:
    k8s: TASK [Gathering Facts] *********************************************************
    k8s: ok: [localhost]
    k8s:
    k8s: TASK [TASK 01 - ATUALIZA O INDEX DE PACOTES] ***********************************
    k8s: ok: [localhost]
    k8s: 
    k8s: TASK [TASK 02 - ATUALIZA SISTEMA OPERACIONAL E INSTALA DEPENDENCIAS] ***********
    k8s: ok: [localhost]
    k8s: 
    k8s: TASK [TASK 03 - BAIXA REPOSITÓRIO] *********************************************
    k8s: ok: [localhost]
    k8s:
    k8s: TASK [TASK 04 - INSTALA REPOSITÓRIO] *******************************************
    k8s: ok: [localhost]
    k8s: 
    k8s: TASK [TASK 04 - LIMPA CACHE DE REPOSITÓRIO] ************************************
    k8s: ok: [localhost]
    k8s: 
    k8s: TASK [TASK 05 - INSTALA DOCKER NA MÁQUINA] *************************************
    k8s: ok: [localhost]
    k8s: 
    k8s: [INFO]  Installing k3s to /usr/local/bin/k3s
    k8s: [INFO]  Skipping installation of SELinux RPM
    k8s: [INFO]  Creating /usr/local/bin/kubectl symlink to k3s
    k8s: [INFO]  Creating /usr/local/bin/crictl symlink to k3s
    k8s: [INFO]  Skipping /usr/local/bin/ctr symlink to k3s, command exists in PATH at /usr/bin/ctr
    k8s: [INFO]  Creating killall script /usr/local/bin/k3s-killall.sh
    k8s: [INFO]  Creating uninstall script /usr/local/bin/k3s-uninstall.sh
    k8s: [INFO]  env: Creating environment file /etc/systemd/system/k3s.service.env
    k8s: [INFO]  systemd: Creating service file /etc/systemd/system/k3s.service
    k8s: [INFO]  systemd: Enabling k3s unit
    k8s: Created symlink /etc/systemd/system/multi-user.target.wants/k3s.service → /etc/systemd/system/k3s.service.
    k8s: [INFO]  systemd: Starting k3s

```
