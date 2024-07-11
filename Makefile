setup:
	ansible-playbook playbook.yml -i inventory.ini --ask-vault-pass


deploy:
	ansible-playbook playbook_deploy.yml -i inventory.ini --ask-vault-pass

build-push:
	docker buildx build --platform linux/amd64,linux/arm64 -t pavel123321/redmine:latest --push .

add-monitoring:
	ansible-playbook playbook_monitoring.yml -i inventory.ini --ask-vault-pass -vv