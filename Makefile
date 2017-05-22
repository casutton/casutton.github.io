publish: source master
	(cd source; jekyll build -d ../master)
	(cd master; git add --all; git commit -a)
	(cd master; git push)


