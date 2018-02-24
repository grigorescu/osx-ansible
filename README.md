# Ansible
Ansible files for OSX local runs.

osx-ansible/playbooks/common.yml shows what roles will be loaded.

to see what any role does, look at osx-ansible/roles/$role_name/task/main.yml

## Installing OS X

There are some steps that you should consider before and during installation of MacOS. For more details, see: https://github.com/drduh/macOS-Security-and-Privacy-Guide

Some steps you might want to consider are:

1. On first boot, hold Command Option P R keys to clear NVRAM.
1. Before installing MacOS, format the drive as APFS (Case-sensitive, Encrypted). This is preferred to FileVault.
1. The MacOS installer will create an admin user. This should not be your regular user. For more info, see https://github.com/drduh/macOS-Security-and-Privacy-Guide#admin-and-standard-user-accounts

## Installing Ansible

Before running you must install ansible. You can either:

1. Install from pip (preferred). This will also prompt you to install the XCode Tools.
  ```
    sudo easy_install pip
    sudo pip install ansible
  ```
1. Install from homebrew (`brew install ansible`), in which case you can turn off homebrew role.

## Configuration

1. Clone the repo (e.g. `cd projects; git clone https://github.com/soehlert/osx-ansible.git`)
1. If you're installing somewhere other than `~/projects/osx-ansible`, edit osx-ansible/ansible.cfg to point to correct inventory file (ansible_hosts in osx-ansible) and (ansible.cfg in osx-ansible).
1. Set variables in group_vars/all ***** MUST DO ****
1. Set hostname variable roles/osx_base/vars/main.yml
1. Set variables in roles/*/vars/main.yml

If you want to use dotfiles:

1.  create {{ ansible_secrets }} directory
1.  create deploy key for your repo
1.  put deploy key into ansible_secrets repo with file name "dotfiles"
1.  allow your deploy key on bitbucket/github

## Running

1. cd to osx-ansible dir (`~/projects/osx-ansible` by default)
1. `sudo ansible-playbook playbooks/common.yml`
