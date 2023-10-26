blogpost-final.html: blogpost.html theme.html
	cat $^ > $@

blogpost.html: README.md
	pandoc $^ > $@
	sed 's/λ /<span class="lambda">λ<\/span>/g' -i $@

clean:
	rm -rf blogpost.html blogpost-final.html