# Makefile
all: executable init softwares clean check vim 

executable:
	chmod -R +x .

init:
	./scripts/init.sh

go:
	./scripts/go.sh

nats:
	./scripts/nats.sh

aws:
	./scripts/aws.sh
	
softwares:
	./scripts/softwares.sh

clean:
	./scripts/clean.sh

check:
	./scripts/check.sh

vim:
	./scripts/vim.sh

.PHONY: all executable init softwares clean check vim 
