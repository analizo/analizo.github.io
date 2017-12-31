SITEDOCS = $(patsubst %.md,%.html,$(wildcard *.md))
MAN2HTML = $(patsubst %.pm,%.html,$(wildcard man/*.pm))

html: index.html $(MAN2HTML) $(SITEDOCS)

$(MAN2HTML): %.html : %.pm template.html.tt page.pl
	@echo "$< → $@"
	@#((echo "<h1>$$(basename $@ | sed 's/.html//')</h1>"; pod2html --noindex $< | sed -s '1,/<body/ d; /<\/body>/,$$ d') | perl page.pl $@ > $@) || ($(RM) $@; false)

$(SITEDOCS): %.html : %.md template.html.tt page.pl
	@echo "$< → $@"
	@#mkdir -p $$(dirname $@)
	@#(pandoc -f markdown -t html $< | perl page.pl $@ > $@) || ($(RM) $@; false)

man.mk: man.pl
	perl $< > $@

clone:
	git clone https://github.com/analizo/analizo.git analizo

publish:
	git clone git@github.com:analizo/analizo.github.io.git publish

upload: all publish
	cd publish && git pull
	rsync \
		-avp \
		--delete \
		--copy-links \
		--exclude '*.swp' \
		--exclude '*.pm' \
		--exclude '*.md' \
		--exclude '*.pl' \
		--exclude '*.mk' \
		--exclude '*.tt' \
		--exclude Makefile \
		--exclude publish \
		--exclude .git \
		--exclude download/ \
		./ publish/
	cd publish && \
		git add . && \
		git commit -a -m "Site published on $(shell date)" && \
		git push

clean:
	$(RM) man.mk $(MAN)
	$(RM) index.html
	$(RM) $(SITEDOCS)
	$(RM) -r man
	$(RM) pod2htmd.tmp
	$(RM) $(CLEAN)
