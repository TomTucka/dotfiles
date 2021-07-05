#!/bin/sh
docker_prune() {
	docker system prune --volumes -fa
}

alias docker-nuke='docker rm -f $(docker ps -a -q)'
alias docker-supernuke='docker rmi -f $(docker images -a -q)'
alias docker-killall='docker stop $(docker ps -a -q)'
