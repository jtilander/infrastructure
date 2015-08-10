#
#
#

all: start

upgrade:
	docker run -it --rm --link sentry_postgres_1:postgres --link sentry_redis_1:redis -e PGPASSWORD=secret -e PGUSER=sentry sentry sentry upgrade

superuser:
	docker run -it --rm --link sentry_postgres_1:postgres --link sentry_redis_1:redis -e PGPASSWORD=secret -e PGUSER=sentry sentry sentry createsuperuser

start:
	docker-compose up -d
	docker-compose scale worker=4

stop:
	docker-compose stop

clean:
	docker rmi `docker images --filter=dangling=true -q`
