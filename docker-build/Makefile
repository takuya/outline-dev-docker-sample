
name = sample
.PHONY: all build run

all: build

build.log: ./Dockerfile
	@docker build -t $(name) .
	date +"%Y-%m-%d %H:%M:%S "> ./build.log

build: build.log

run:
	@docker run -it -d $(name)

## makefile 中での $() は $$() にする
login:
	docker exec -it $$( docker ps -q  --filter 'ancestor=$(name)' -f 'status=running' )  bash


kill:
	docker kill $$( docker ps -q  --filter 'ancestor=$(name)' -f 'status=running' ) 
