# eclair
Infra automation for rails, nodejs, mysql, redis, elasticsearch on vagrant using Ansible

# Default Version

- Ruby 2.4.2
- MySQL 5.7
- Redis stable
- Elasticsearch 5.6
- Node.js 8.1.2

To change version, please edit `roles/*/vars/main.yml`.<br>
But, if with other version works, is not guaranteed.<br>
e.g. may some properties in config file are missing, vice versa.<br>

Regarding OS, more sensitive.<br>
On default using CentOS7.2.<br>
e.g. if you prefer to use Ubuntu, you have to replace `yum` with `apt-get`<br>

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
