This is a fork of [jekyll], a lightweight static website generator, adding support for [pandoc] via the [pandoc-ruby] gem. The modified version of jekyll lives on the `pandoc-ruby` branch. To get the goods,

    git clone git@github.com:dsanson/jekyll.git -b pandoc-ruby

Then, from within the cloned directory,

	gem build jekyll.gemspec
	gem install jekyll-x-x-x.gem

To use the pandoc support, add something like

	markdown 	: rdiscount
	pandoc      :
    	extensions : [smart, mathjax]

to your _config.yml. 

Note that you should *not* set `markdown` to `pandoc`. I wanted to have a single _config.yml that works with pandoc on my own machine, but gracefully falls back to something else when pandoc is not available (e.g., on [github pages]). So set `markdown` to the fallback converter (`rdiscount` is a good choice), and either set `pandoc` to `true`, i.e.,

	pandoc    : true

or provide some command line options to pass to pandoc, as in the example above.So long as a `pandoc` config variable has been set, jekyll will use pandoc instead of the fallback converter.

[jekyll]: https://github.com/mojombo/jekyll
[pandoc]: http://johnmacfarlane.net/pandoc/
[pandoc-ruby]: https://github.com/alphabetum/pandoc-ruby
[github pages]: http://pages.github.com/

