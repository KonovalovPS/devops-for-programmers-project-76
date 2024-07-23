setup:
	ansible-playbook playbook_setup.yml -i inventory.ini --vault-password-file ansible_vault_password

deploy:
	ansible-playbook playbook.yml --tags deploy -i inventory.ini --vault-password-file ansible_vault_password

add-monitoring:
	ansible-playbook playbook.yml --tags datadog -i inventory.ini --vault-password-file ansible_vault_password

decrypt:
	ansible-vault decrypt group_vars/webservers/vault.yml

encrypt:
	ansible-vault encrypt group_vars/webservers/vault.yml
