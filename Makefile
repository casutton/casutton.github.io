TMPDIR := $(shell mktemp -d -t tempdir)

publish: source master
	(cd source; jekyll build -d ../master)

