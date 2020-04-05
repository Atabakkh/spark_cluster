CURDIR=$(PWD)
run: up test sleep down

INTERACTIVE:=$(shell tty >/dev/null && echo "-it")

up:
	@docker-compose up -d --build
	@echo 'sleep 20' && sleep 20
	@docker exec pysparkmaster runmaster.sh && docker exec pysparkworker1 runworker.sh && docker exec pysparkworker2 runworker.sh && docker exec pysparkworker3 runworker.sh
test:
	@docker run --rm -v $(CURDIR):/code --network pysparknetwork pysparkbase:1.0.1 spark-submit --master spark://pysparkmaster:7077 /code/pyspark-apps/test.py
down:
	@docker-compose down
sleep:
	@sleep 10

