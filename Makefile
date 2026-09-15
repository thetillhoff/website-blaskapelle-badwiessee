.DEFAULT_GOAL := help

.PHONY: help dev build

help: ## Show available targets
	@grep -E '^[a-zA-Z_-]+:.*##' $(MAKEFILE_LIST) | awk 'BEGIN {FS = ":.*##"}; {printf "  %-10s %s\n", $$1, $$2}'

dev: ## Start Hugo in watch + serve mode
	hugo server --buildDrafts --disableFastRender

build: ## Build the production site into public/ (same command Netlify runs)
	hugo --minify
