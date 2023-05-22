.POSIX:
DESTDIR=dist

.PHONY: build
build:		## generate website from markdown
	docker run --rm -v "$PWD":./module4_task1/app -w ./module4_task1/app awesome:build go mod tidy
	docker run --rm -v "$PWD":./module4_task1/app -w ./module4_task1/app awesome:build hugo
	docker run --rm -v "$PWD":./module4_task1/app -w ./module4_task1/app awesome:build go build -o awesome-api

.PHONY: build-docker
build-docker: ## build a docker image
	docker build -t awesome:build -f ./.build/Dockerfile .

.PHONY: clean
clean:		## Removes all files from the directory /dist
	rm -Rf $(DESTDIR)/*
	rm -f ./awesome-website.zip

.PHONY: post
post:		## Post a new blog post 
	hugo new posts/$(POST_NAME).md
	sed -i 's/title:.*/title: "$(POST_TITLE)"/' content/posts/$(POST_NAME).md
	
.PHONY: help
help: 		## Show this help
	@fgrep -h "##" $(MAKEFILE_LIST) | fgrep -v fgrep | sed -e 's/\\$$//' | sed -e 's/##//'

.PHONY: check
check: 		## check the markdown's lint
	@markdownlint -f ./content/posts/*.md && markdown-link-check ./content/posts/*.md

.PHONY: validate
validate:  	## validate W3C
	@docker run awesome:build git clone https://github.com/holbertonschool/W3C-Validator.git
	@docker run awesome:build sh -c "python3 /opt/W3C-Validator/w3c_validator.py ./dist/index.html || true"

.PHONY: run
run: 		## runs the api and logs it
	./awesome-api > ./awesome-api.log 2>&1 &

.PHONY: stop
stop: 		## kills the process with PID name
	pkill awesome-api

.PHONY: test 
test:	 	## run tests
	@make unit-tests 
	@make integration-tests

.PHONY: unit-tests
unit-tests: ## run unit tests
	docker run awesome:build sh -c "go test -v -short -coverprofile=coverage-units.out" 

.PHONY: integration-tests
integration-tests:	## run integration tests
	docker run awesome:build sh -c "go test -v -coverprofile=coverage-integrations.out"

.PHONY: package
package: 	## produce a file awesome-website.zip 
	zip -r awesome-website.zip awesome-api dist/*

.PHONY: lint
lint:		## lint the files
	docker run awesome:build sh -c "markdownlint -f ./README.md ./DEPLOY.md"
