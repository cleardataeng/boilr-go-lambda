.DEFAULT_GOAL := help

help:
	$(info available targets:)
	@awk '/^[a-zA-Z\-\_0-9\.\$$\(\)\%/]+:/ { \
		helpMsg = $$0; \
		nb = sub(/^[^:]*:.* ## /, "", helpMsg); \
		if (nb) \
			print  $$1 "\t" helpMsg; \
	}' \
	$(MAKEFILE_LIST) | column -ts $$'\t' | \
	grep --color '^[^ ]*'

install-boiler: ## install the boilr binary
	curl https://raw.githubusercontent.com/tmrts/boilr/master/install | sh

install-template: ## install the boilr-go-lambda template
	boilr init
	boilr template download cleardataeng/boilr-go-lambda go-lambda -f
