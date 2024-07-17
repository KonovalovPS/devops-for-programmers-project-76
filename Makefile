setup:
	ansible-playbook playbook.yml --tags setup -i inventory.ini --vault-password-file ansible_vault_password

deploy:
	ansible-playbook playbook.yml --tags deploy -i inventory.ini --vault-password-file ansible_vault_password

add-monitoring:
	ansible-playbook playbook.yml --tags datadog -i inventory.ini --vault-password-file ansible_vault_password