
.PHONY: all

REPO = $(shell pwd)
PREFIX = /usr/local
BINDIR = $(PREFIX)/bin
SYSCONFDIR = /etc

all: $(BINDIR)/synergyp $(SYSCONFDIR)/bash_completion.d/synergyp

$(SYSCONFDIR)/bash_completion.d/synergyp: $(SYSCONFDIR)/bash_completion.d
	ln -sf $(REPO)/synergyp-completion.sh $@

$(BINDIR)/synergyp:
	ln -sf $(REPO)/synergyp $@
