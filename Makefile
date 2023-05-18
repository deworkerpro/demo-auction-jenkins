init: docker-down docker-pull docker-build docker-up
up: docker-up
down: docker-down

docker-up:
	docker-compose up -d

docker-down:
	docker-compose down --remove-orphans

docker-pull:
	docker-compose pull

docker-build:
	docker-compose build

show-initial-password:
	docker-compose exec jenkins cat /var/jenkins_home/secrets/initialAdminPassword

deploy:
	ssh ${HOST} -p ${PORT} 'rm -rf jenkins && mkdir jenkins'
	scp -P ${PORT} docker-compose-production.yml ${HOST}:jenkins/docker-compose.yml
	scp -P ${PORT} -r docker ${HOST}:jenkins/docker
	ssh ${HOST} -p ${PORT} 'cd jenkins && echo "COMPOSE_PROJECT_NAME=jenkins" >> .env'
	ssh ${HOST} -p ${PORT} 'cd jenkins && docker-compose pull'
	ssh ${HOST} -p ${PORT} 'cd jenkins && docker-compose up --build --remove-orphans -d'
