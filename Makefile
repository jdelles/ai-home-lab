MODEL_NAME=gemma4:e4b

setup:
	@echo "Pulling model $(MODEL_NAME)..."
	ollama pull $(MODEL_NAME)
	@echo "Starting the platform stack..."
	docker-compose up -d

stop:
	docker-compose down

status:
	docker ps
	ollama list

clean:
	docker-compose down -v