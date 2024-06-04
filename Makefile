# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: mguerga <mguerga@42lausanne.ch>            +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2024/03/12 11:12:32 by mguerga           #+#    #+#              #
#    Updated: 2024/06/02 11:30:38 by mguerga          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

# docker compose Makefile

all: build up

build:
	@docker-compose -f compose.yaml build
up:
	@docker-compose -f compose.yaml up -d
down:
	@docker-compose -f compose.yaml down
ps:
	@docker-compose ps -a 
log:
	@make ps | docker-compose logs  


