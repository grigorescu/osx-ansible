# Ansible
Ansible files for OSX local runs.

osx-ansible/playbooks/common.yml shows what roles will be loaded.

to see what any role does, look at osx-ansible/roles/$role_name/task/main.yml

Before running you must:
1. Install ansible:
  * Either install from homebrew (brew install ansible), in which case you can turn off homebrew role
  * Or you can install from pip (this should also install XCode command line tools):
    sudo easy_install pip
    sudo pip install ansible
1. Clone the repo (e.g. `cd src; git clone https://github.com/soehlert/osx-ansible.git`)
1. Edit osx-ansible/ansible.cfg to point to correct inventory file (ansible_hosts in osx-ansible) and (ansible.cfg in osx-ansible)
1. Set variables in group_vars/all ***** MUST DO *****
1. Set hostname variable roles/osx_base/vars/main.yml
1. Set variables in roles/*/vars/main.yml

If you want to use dotfiles:

1.  create {{ ansible_secrets }} directory
1.  create deploy key for your repo
1.  put deploy key into ansible_secrets repo with file name "dotfiles"
1.  allow your deploy key on bitbucket/github


to run: 
cd to osx-ansible dir
ansible-playbook playbooks/common.yml
