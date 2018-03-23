# The Exclusive Or

This is the source code for [The Exclusive Or](http://www.theexclusive.org), a blog about academic,
expatriate, and other unusual forms of life.

The blog is written in
[Jekyll](https://github.com/jekyll/jekyll),
using the
**Jekyll Now** theme. I have modified the theme a bit.

The source files are in the `source` branch of the repository. These are compiled into HTML files on the
`master` branch. The reason we do things this
way is that we have custom Jekyll plugins to generate
the index page for each blog tag. The github pages
renderer doesn't support running custom plugins,
so we need to build the site in Jekyll before
we commit it to Github pages.
