setup:
	ansible-playbook playbook.yml -i inventory.ini

deploy:
	ansible-playbook playbook_deploy.yml -i inventory.ini
