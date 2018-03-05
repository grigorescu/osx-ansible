base: osx_base
dump_vars:
	ansible all -m setup --tree /tmp/facts --connection=local -i ansible_hosts
dotfiles:
	ansible-playbook main.yml -i ansible_hosts --tags dotfiles -K
osx_base:
	ansible-playbook main.yml -i ansible_hosts --tags osx_base -K
packages:
	ansible-playbook main.yml -i ansible_hosts --tags packages -K
tweaks:
	ansible-playbook main.yml -i ansible_hosts --tags tweaks -K
