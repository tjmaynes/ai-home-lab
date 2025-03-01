ENV_FILE := $(or $(ENV_FILE), .envrc)

include $(ENV_FILE)
export $(shell sed 's/=.*//' $(ENV_FILE))

start:
	chmod +x ./scripts/start.sh
	./scripts/start.sh

stop:
	chmod +x ./scripts/stop.sh
	./scripts/stop.sh
