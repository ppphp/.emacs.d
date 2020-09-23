.PHONY: all modules cask deps

all: modules deps

modules:
	make -C modules

cask:
ifeq (,$(shell command -v cask 2> /dev/null))
	curl -fsSL https://raw.githubusercontent.com/cask/cask/master/go | python
endif

deps:
	make -C deps

remote-update:
	git submodule foreach "git reset HEAD --hard"
	git submodule foreach "git fetch --recurse-submodules --prune"
	git submodule foreach "git checkout origin/master"
	git submodule foreach "git branch -D master"
	git submodule foreach "git checkout -b master origin/master"
	git submodule foreach "git checkout master"
	git submodule foreach "git submodule update --init --recursive"

update: remote-update deps modules


