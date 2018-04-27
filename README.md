# What is eclair
Infra automation for rails, nodejs, mysql, redis, elasticsearch on vagrant using Ansible

# Default Version

- Ruby 2.4.2
- MySQL 5.7
- Redis stable
- Elasticsearch 5.6
- Node.js 8.1.2

# To change version
Please edit `roles/*/vars/main.yml`.<br>
But, if with other version works, is not guaranteed.<br>
e.g. may some properties in config file are missing, vice versa.<br>

Regarding OS, more sensitive.<br>
On default using CentOS7.2.<br>
e.g. if you prefer to use Ubuntu, you have to replace `yum` with `apt-get`<br>

# Pre-Setting

1. copy `ansible.cfg.example` as `ansible.cfg` and edit.

change ssh config file location `/Users/eclair/.ssh/eclair-config`

```
ssh_args = -o ControlPersist=15m -F /Users/eclair/.ssh/eclair-config -q
```

2. copy `hosts.example` as `hosts` and edit.

change host name `eclair`

```
eclair
```

3. copy `site.yml.example` as `site.yml` and edit.

change host name `eclair`

```
- hosts: eclair
```

4. copy `Vagrantfile.example` as `Vagrantfile` and edit as you need, or locate your own `Vagrantfile`.

# How to use

```
$ cd eclair
$ ansible-playbook site.yml
```

# Destroy and Recreate

```
$ cd eclair
$ sh reset.sh
```
