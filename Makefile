.PHONY: setup

setup:
	rm -rf .git
	echo "# Go project [![Build Status](https://travis-ci.org/path/to/repo.svg?branch=master)](https://travis-ci.org/path/to/repo)" > README.md
	echo >> README.md
	echo "* License is Apache-2.0" >> README.md
	go test
	go run main.go
	mv Makefile.tmpl Makefile
	@echo
	@echo "Do git init"
