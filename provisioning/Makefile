server:
	ansible-playbook server.yml -i hosts.yml

authorize:
	ansible-playbook authorize.yml -i hosts.yml

upgrade:
	ansible-playbook upgrade.yml -i hosts.yml

show-initial-password:
	ansible -i hosts.yml manager -m shell -a 'cd /home/deploy/jenkins && docker-compose exec jenkins cat /var/jenkins_home/secrets/initialAdminPassword'
