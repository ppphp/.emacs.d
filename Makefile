.PHONY: all modules cask deps

NPROCS:=1
OS:=$(shell uname -s)
ifeq ($(OS),Linux)
	NPROCS:=$(shell grep -c ^processor /proc/cpuinfo)
endif
ifeq ($(OS),Darwin) # Assume Mac OS X
	NPROCS:=$(shell system_profiler | awk '/Number Of CPUs/{print $4}{next;}')
endif

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
	-git submodule foreach --recursive --quiet pwd | xargs -P${NPROCS} -I{} bash -c "cd {}; git reset HEAD --hard"
	-git submodule foreach --recursive --quiet pwd | xargs -P${NPROCS} -I{} bash -c "cd {}; git fetch --recurse-submodules --prune"
	-git submodule foreach --recursive --quiet pwd | xargs -P${NPROCS} -I{} bash -c "cd {}; git checkout origin/master"
	-git submodule foreach --recursive --quiet pwd | xargs -P${NPROCS} -I{} bash -c "cd {}; git branch -D master"
	-git submodule foreach --recursive --quiet pwd | xargs -P${NPROCS} -I{} bash -c "cd {}; git checkout -b master origin/master"
	-git submodule foreach --recursive --quiet pwd | xargs -P${NPROCS} -I{} bash -c "cd {}; git checkout master"
	-git submodule foreach --recursive --quiet pwd | xargs -P${NPROCS} -I{} bash -c "cd {}; git submodule update --init --recursive"

update: remote-update deps modules


