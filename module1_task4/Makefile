.POSIX:
DESTDIR=dist
HUGO_VERSION=0.84.0
HUGO_EXTENDED=1

.PHONY: build
build:		## Build a new website in the directory /dist 
	hugo -d $(DESTDIR)

.PHONY: clean
clean:		## Removes all files from the directory /dist
	cd $(DESTDIR) && rm -rf *

.PHONY: post
post:		## Post a new blog post 
	hugo new posts/$(POST_NAME).md
	
.PHONY: help
help: 		## Show this help
	@fgrep -h "##" $(MAKEFILE_LIST) | fgrep -v fgrep | sed -e 's/\\$$//' | sed -e 's/##//'