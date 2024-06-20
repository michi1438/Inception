# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: mguerga <mguerga@42lausanne.ch>            +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2024/03/12 11:12:32 by mguerga           #+#    #+#              #
#    Updated: 2024/06/20 13:57:01 by mguerga          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

# docker compose Makefile

all: build up

re: down all

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


