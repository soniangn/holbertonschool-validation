.POSIX:
DESTDIR=dist
HUGO_VERSION=0.84.0
HUGO_EXTENDED=1

.PHONY: build
build: 
	hugo -d $(DESTDIR)

.PHONY: clean
clean:
	cd $(DESTDIR) && rm -rf *

.PHONY: post
post: 
	hugo new posts/$(POST_NAME).md
	@sed -i 's/title:.*/title: $(POST_TITLE)/' content/posts/$(POST_NAME).md
	@sed -i 's/draft:.*/draft: "true"/' content/posts/$(POST_NAME).md