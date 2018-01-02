SITEDOCS = $(patsubst %.md,%.html,$(wildcard *.md))
MAN2HTML = $(patsubst %.pm,%.html,$(wildcard man/*.pm metrics/*.pm metrics/module/*.pm metrics/global/*.pm))

html: analizo man/index.pm metrics/index.pm index.html $(MAN2HTML) $(SITEDOCS)

$(MAN2HTML): %.html : %.pm template.html.tt page.pl update
	@echo "$< → $@"
	((echo "<h1>$$(basename $@ | sed 's/.html//')</h1>"; pod2html --noindex $< | sed -s '1,/<body/ d; /<\/body>/,$$ d') | perl page.pl $@ > $@) || ($(RM) $@; false)

$(SITEDOCS): %.html : %.md template.html.tt page.pl
	@echo "$< → $@"
	@mkdir -p $$(dirname $@)
	@(pandoc -f markdown -t html $< | perl page.pl $@ > $@) || ($(RM) $@; false)

analizo:
	@git clone https://github.com/analizo/analizo.git analizo

update:
	cd analizo/ && git pull origin master

man/index.pm: update
	@perl man.pl

metrics/index.pm: update
	@perl metrics.pl

upload: all publish
	git add .
	git commit -a -m "Site published on $(shell date)"
	git push

clean:
	$(RM) index.html
	$(RM) $(MAN2HTML)
	$(RM) $(SITEDOCS)
	$(RM) pod2htmd.tmp
