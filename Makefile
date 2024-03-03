# Makefile
all: executable init shebang clean check vim 

executable:
	chmod -R +x .

init:
	./scripts/init.sh

go:
	./scripts/go.sh

shebang:
	./shebang.sh

clean:
	./scripts/clean.sh

check:
	./scripts/check.sh

vim:
	./scripts/vim.sh

.PHONY: all executable init shebang clean check vim 
