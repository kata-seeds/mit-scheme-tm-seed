all: dependencies test

base_filename=kata

dependencies:
	which mit-scheme >/dev/null 2>&1 || brew install mit-scheme
	which rlwrap >/dev/null 2>&1 || brew install rlwrap

test:
	echo | mit-scheme --batch-mode --load $(base_filename)_test.scm

repl:
	rlwrap mit-scheme --load $(base_filename).scm

.PHONY: all dependencies test repl
