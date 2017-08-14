.PHONY: setup build

build: clean
	go test
	go build

clean:
	rm -f go-prj

setup:
	rm -rf .git
	echo "# Go project" > README.md
	go test
	go run main.go
	@echo
	@echo "Remove setup from Makefile."
	@echo "Do git init"
