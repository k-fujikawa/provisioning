# Provisioning

![](https://github.com/k-fujikawa/provisioning/workflows/Provisioning%20test%20for%20Ubuntu/badge.svg)

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
ansible-playbook sites/ubuntu-gpu.yml --ask-become-pass
```

#### Re-login

```
logout
```

#### Check if GPUs are available

```
docker run --runtime=nvidia --rm nvidia/cuda nvidia-smi
```

## MacOS

#### Install Homebrew

```
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
```

#### Install ansible

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
