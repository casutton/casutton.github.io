# this is meant to be run from the parent directory,
#  which will have two copies of the repo, one on
#  source/ branch and one on master/ branch

TMPDIR := $(shell mktemp -d -t tempdir)

publish: source master
	(cd source; jekyll build -d ../master)
	(cd master; git add --all; git commit -a)
	(cd master; git push)


