# Versão do Makefile
VERSION="1"
SHELL := /bin/bash
MSG="add a bunch of articles"
# HELP
# This will output the help for each task
# thanks to https://marmelab.com/blog/2016/02/29/auto-documented-makefile.html
.PHONY: help $(cname)

help: ## Mostra essa ajuda/descrição
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'

version: ## Mostra a versão do arquivo makefile
	@echo "A versão do Makefile é: $(VERSION)"
	@echo "A versão da aplicação é: $(ver)"

git: ## Executa um commit padrão com um push
	@git add . \
		&& git commit -m $(MSG) \
		&& git fetch origin \
		&& git pull --no-rebase origin \
		&& git push origin