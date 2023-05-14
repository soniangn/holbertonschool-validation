.POSIX:
DESTDIR=dist
HUGO_VERSION=0.84.0

.PHONY: build
build:		## update Hugo version & Build a new website in the directory /dist 
	curl -L https://github.com/gohugoio/hugo/releases/download/v0.84.0/hugo_extended_0.84.0_Linux-64bit.deb -o hugo.deb
	apt install ./hugo.deb
	rm hugo.deb
	@make check && hugo -c $(DESTDIR)

.PHONY: clean
clean:		## Removes all files from the directory /dist
	rm -Rf $(DESTDIR)/*

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
	@-./w3c_validator.py ./dist/index.html
