LAST_COMMIT_HASH := $(shell git rev-parse HEAD)
BRANCH_NAME := $(shell git branch --show-current)
BUILD_AT := $(shell date -u)

build_image:
	docker build --build-arg LAST_COMMIT_HASH=$(LAST_COMMIT_HASH) --build-arg BRANCH_NAME=$(BRANCH_NAME) --build-arg BUILD_AT="$(BUILD_AT)" -t api_dime_track_image .

run_container:
	docker-compose up -d

stop_container:
	docker stop  api_dime_trac && docker rm  api_dime_trac

pull:
	git pull --rebase origin main

run:
	docker-compose up -d

prune_image:
	docker image prune -f

build_and_run:
	build_image && run

pull_build_run:
	pull && build_image && run
