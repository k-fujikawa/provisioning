# Provisioning

![](https://github.com/k-fujikawa/provisioning/workflows/ubuntu-cuda-10.2/badge.svg)
![](https://github.com/k-fujikawa/provisioning/workflows/ubuntu-cuda-11.2/badge.svg)

- [Ubuntu](#ubuntu)
- [MacOS](#MacOS)

## Ubuntu

#### Install Ansible
```
sudo apt-get update -y && sudo apt-get install -y software-properties-common
sudo apt-add-repository -y ppa:ansible/ansible
sudo apt-get update -y && sudo apt-get install -y ansible
```

#### Clone this repository

```
mkdir -p $HOME/git/github.com/k-fujikawa
git clone git@github.com:k-fujikawa/provisioning.git $HOME/git/github.com/k-fujikawa/provisioning
cd $HOME/git/github.com/k-fujikawa/provisioning
```

#### Run Ansible playbooks

```
ansible-galaxy install -r requirements.yml
ansible-playbook sites/ubuntu-cuda-10.2.yml --ask-become-pass
```

#### Re-login

```
logout
```

#### Check if GPUs are available

```
docker run --runtime=nvidia --rm nvidia/cuda nvidia-smi
```

#### Upgrade CUDA packages

Uninstall old packages and re-run ansible-playbook.

```
sudo apt-get --purge remove "nvidia-*" "cuda-*"
ansible-playbook sites/ubuntu-cuda-11.2.yml --ask-become-pass
```

## MacOS

#### Install Homebrew

```
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
```

#### Install Ansible

```
brew install ansible
```

#### Clone this repository

```
mkdir -p $HOME/git/github.com/k-fujikawa
git clone git@github.com:k-fujikawa/provisioning.git $HOME/git/github.com/k-fujikawa/provisioning
cd $HOME/git/github.com/k-fujikawa/provisioning
```

#### Run Ansible playbooks

```
ansible-playbook sites/macos.yml
```
