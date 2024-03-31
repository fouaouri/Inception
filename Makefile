COMPOSE_FILE = srcs/docker-compose.yml
add : up

up :
	docker-compose -f $(COMPOSE_FILE) up --build -d

down : 
	docker-compose -f $(COMPOSE_FILE) down

rmi : 
	docker rmi -f $$(docker images -q)

re : down rmi up