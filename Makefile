prefix = /usr/local
bindir = $(prefix)/bin

SCRIPTS = \
	docker-ip \
	docker-pid \
	docker-run \
	docker-run-wrapper \
	docker-user-run \
	docker-user-run-wrapper

INSTALL = install

all:

install: all
	$(INSTALL) -m 755 -d $(bindir)
	for script in $(SCRIPTS); do \
		$(INSTALL) -m 755 $$script $(bindir)/; \
	done
