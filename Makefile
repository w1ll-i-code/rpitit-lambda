blogpost-final.html: blogpost.html theme.html
	cat $^ > $@

blogpost.html: blogpost.md
	pandoc $^ > $@
	sed 's/λ /<span class="lambda">λ<\/span>/g' -i blogpost.html

clean:
	rm -rf blogpost.html blogpost-final.html