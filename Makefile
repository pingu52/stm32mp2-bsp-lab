.PHONY: help lint

help:
	@echo "Targets:"
	@echo "  lint   - markdown lint (requires node/npm or use GitHub Actions)"

lint:
	npx markdownlint-cli2 "**/*.md"
