# Ubuntu provisioning

## Install Ansible

```
apt-get update -y && apt-get install -y software-properties-common
apt-add-repository ppa:ansible/ansible
apt-get update -y && apt-get install -y ansible
```

## Clone this repository

```
mkdir -p $HOME/git/github.com/k-fujikawa
git clone git@github.com:k-fujikawa/ubuntu-provisioning.git $HOME/git/github.com/k-fujikawa/ubuntu-provisioning
cd $HOME/git/github.com/k-fujikawa/ubuntu-provisioning
```

## Run Ansible playbooks

```
ansible-playbook site.yml
```
