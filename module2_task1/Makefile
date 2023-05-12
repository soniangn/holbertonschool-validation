.PHONY: help
help: 		## Show this help
	@fgrep -h "##" $(MAKEFILE_LIST) | fgrep -v fgrep | sed -e 's/\\$$//' | sed -e 's/##//'

.PHONY: build
build:		## Compile source code of the application to a binary name awesome.api
	@make lint && go build || exit -1

.PHONY: run
run:		## Run the application in background and write logs in awesome-api.log
	@./awesome-api >./awesome-api.log 2>&1 &

.PHONY: stop
stop:		## Stop the application
	@kill "$(shell pgrep awesome-api)"

.PHONY: clean
clean:		## Stop the application and delete the binary awesome-api and the log file awesome-api.log
	@make stop
	@rm -f awesome-api awesome-api.log

.PHONY: test 
test:	 	## Test
	@curl http://localhost:9999
	@curl http://localhost:9999/health

.PHONY: lint
lint:		## lint the source code
	@golangci-lint run