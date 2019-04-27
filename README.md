# Ubuntu provisioning

[![CircleCI](https://circleci.com/gh/k-fujikawa/ubuntu-provisioning.svg?style=shield)](https://circleci.com/gh/k-fujikawa/ubuntu-provisioning)

## Install Ansible

```
sudo apt-get update -y && sudo apt-get install -y software-properties-common
sudo apt-add-repository -y ppa:ansible/ansible
sudo apt-get update -y && sudo apt-get install -y ansible
```

## Clone this repository

```
mkdir -p $HOME/git/github.com/k-fujikawa
git clone git@github.com:k-fujikawa/ubuntu-provisioning.git $HOME/git/github.com/k-fujikawa/ubuntu-provisioning
cd $HOME/git/github.com/k-fujikawa/ubuntu-provisioning
```

## Run Ansible playbooks

```
ansible-galaxy install -r requirements.yml
ansible-playbook site.yml --ask-become-pass
```

## Re-login

```
logout
```

## Check if GPUs are available

```
docker run --runtime=nvidia --rm nvidia/cuda nvidia-smi
```
