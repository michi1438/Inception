# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: mguerga <mguerga@42lausanne.ch>            +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2024/03/12 11:12:32 by mguerga           #+#    #+#              #
#    Updated: 2024/06/17 12:16:50 by mguerga          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

# docker compose Makefile

all: build up

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


