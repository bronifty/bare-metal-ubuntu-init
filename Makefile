# Makefile

# Default target
all: clean check vim make_executable init nex preflight nats build test compile run devrun

# Make everything executable
make_executable:
	chmod -R +x .

# Run the init script to install prerequisites
init:
	./init.sh

shebang:
	./shebang.sh

# clean
clean:
	./scripts/clean.sh

# check
check:
	./scripts/check.sh

vim:
	./scripts/vim.sh


.PHONY: all clean check vim make_executable init nex preflight nats build test compile run devrun
