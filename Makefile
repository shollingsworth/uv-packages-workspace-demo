export SHELL := /bin/bash

clean:
	rm -rfv ./dist

build: clean sync
	uv build --all-packages

sync:
	uv sync \
	--all-extras \
	--all-groups \
	--active \
	--all-packages \
	--upgrade

.PHONY: test clean all
