all: dependencies test

base_filename=kata

dependencies:
	which mit-scheme || brew install homebrew/x11/mit-scheme
	which rlwrap || brew install rlwrap

test: test-manager/load.scm
	echo | mit-scheme --batch-mode --load $(base_filename)_test.scm

repl:
	rlwrap mit-scheme --load $(base_filename).scm

test-manager/load.scm:
	git submodule init
	git submodule update

.PHONY: all dependencies test repl
