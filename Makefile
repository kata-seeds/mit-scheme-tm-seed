all: dependencies test

base_filename=kata

dependencies:
	which mit-scheme || brew install homebrew/x11/mit-scheme
	which rlwrap || brew install rlwrap

test:
	echo | mit-scheme --batch-mode --load $(base_filename)_test.scm

repl:
	rlwrap mit-scheme --load $(base_filename).scm

.PHONY: all dependencies test repl
