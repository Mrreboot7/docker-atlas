# current_branch := $(shell git rev-parse --abbrev-ref HEAD)
current_branch := standalone
build:
	docker build -t myy92715/atlas:$(current_branch) ./
push:
	docker push myy92715/atlas:$(current_branch)
pull:
	docker pull myy92715/atlas:$(current_branch)