.POSIX:
DESTDIR=dist
HUGO_VERSION=0.111.3+extended

.PHONY: build
build: 
	hugo -d $(DESTDIR)

.PHONY: clean
clean:
	cd $(DESTDIR) && rm -rf *

.PHONY: post
post: 
	hugo new posts/$(POST_NAME).md
	
