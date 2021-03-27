build-docker-image:
	docker build -t rustecho .
	docker save rustecho:latest > dist/rustecho_latest.tar