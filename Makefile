VERSION=15.0

.PHONY: blank
blank:
	@echo "Nothing to do."

.PHONY: upload
upload:
	rsync -av --delete \
		--exclude Makefile \
		--exclude README.md \
		--exclude .git \
		./ repo@salixos.org:repo/x86_64/slackware-$(VERSION)/deps/

