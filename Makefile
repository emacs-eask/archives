SHELL := /usr/bin/env bash

EMACS ?= emacs
EASK ?= eask

.PHONY: refresh generate_badges_system

generate_badges_system:
	@echo "Generating system badges.."
	@$(EASK) load "./bin/generate-badges-system.el"

refresh:
	@echo "Refresh archive-contents"
	@$(EASK) refresh --allow-error
	@$(EASK) load "./bin/refresh.el"
