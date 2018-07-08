
.PHONY: all

REPO = $(shell pwd)
PREFIX = $(HOME)/.local
BINDIR = $(PREFIX)/bin
CONFDIR = $(HOME)

all: $(BINDIR)/synergyp $(CONFDIR)/.bash_completion.d/synergyp


$(CONFDIR)/.bash_completion:
	$(error "~/.bash_completion is provided by `dotfiles`. Use: make common/bash_completion")

$(CONFDIR)/.bash_completion.d: $(CONFDIR)/.bash_completion
	mkdir $@

$(CONFDIR)/.bash_completion.d/synergyp: $(CONFDIR)/.bash_completion.d
	ln -sf $(REPO)/synergyp-completion.sh $@

$(BINDIR)/synergyp:
	ln -sf $(REPO)/synergyp $@
