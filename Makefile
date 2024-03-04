# Makefile
all: executable init go nats aws softwares nex clean check vim cpufreq sshkey

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

nex:
	./scripts/nex.sh

clean:
	./scripts/clean.sh

check:
	./scripts/check.sh

vim:
	./scripts/vim.sh

cpufreq:
	./scripts/cpufreq.sh

sshkey:
	./scripts/sshkey.sh

.PHONY: all executable init go nats aws softwares nex clean check vim cpufreq sshkey