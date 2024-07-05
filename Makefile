# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: mguerga <mguerga@42lausanne.ch>            +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2024/03/12 11:12:32 by mguerga           #+#    #+#              #
#    Updated: 2024/07/05 08:29:57 by mguerga          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

# docker compose Makefile

all: build up

re: down all

#nuke:
#	docker stop $(docker ps -qa); docker rm $(docker ps -qa); docker rmi -f $(docker images -qa); \
#	   	docker volume rm $(docker volume ls -q); docker network rm $(docker network ls -q) 
#reclaim: 
#	docker system prune -a --volumes

build:
	@docker-compose -f srcs/compose.yaml build
up:
	@docker-compose -f srcs/compose.yaml up -d
down:
	@docker-compose -f srcs/compose.yaml down
ps:
	@docker-compose -f srcs/compose.yaml ps -a 
log:
	@make ps | docker-compose -f srcs/compose.yaml logs  


