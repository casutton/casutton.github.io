TMPDIR := $(shell mktemp -d -t tempdir)

publish:
	if [ ! -d $(TMPDIR) ]; then echo Error: Could not find directory $(TMPDIR); fi
	jekyll build -d $(TMPDIR)
	git checkout master
	rsync $(TMPDIR) .
	git commit -a
	git push
	git checkout source
	rm -rf $(TMPDIR)	
	

