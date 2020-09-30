dev:
	@docker-compose -f docker-compose.yml up onset

stop:
	@docker-compose -f docker-compose.yml down

logs:
	@docker-compose -f docker-compose.yml logs -f

start:
	@docker-compose -f docker-compose.yml up -d

build:
	@docker-compose -f docker-compose.yml build

attach:
	@docker-compose -f docker-compose.yml exec onset bash
