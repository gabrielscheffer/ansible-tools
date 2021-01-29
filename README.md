# Ansible Tools REPO 

Ansible infrastructure

## Table of Contents

<!-- vim-markdown-toc GFM -->

* [Documentation](#documentation)
    - [Requirements](#requirements)
    - [Structure](#structure)
    - [Installation](#installation)

<!-- vim-markdown-toc -->

## Documentation

### Requirements

* **ansible** >= 2.5
pip3
RedHat	NetworkManager-glib
Debin	libnm-glib-dev
### Structure

```
.
├── ansible.cfg       ## Ansible base configuration
├── group_vars        ## Group variables
├── host_vars         ## Host variables
├── inventories       ## Inventory files
│   └── default       ## Default inventory file
├── playbooks         ## Playbooks
│   └── init.yml      ## Example playbook
├── requirements.yml  ## Role dependensies from ansible-galaxy
├── roles             ## Your own roles
├── galaxy            ## Galaxy roles
└── tmp               ## Temporary files, like cached facts, logs, etc.
    ├── ansible.log   ## Main log file
    ├── facts.d       ## Facts cache
    └── ssh-...-...   ## SSH session persist
```

### Installation

1. Clone this repo
2. Download dependencies:

```bash
ansible-galaxy install -r requirements.yml -p galaxy
```
