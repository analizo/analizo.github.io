Analizo is a free, multi-language, extensible source code analysis.  It
supports the extraction and calculation of a fair number of source code
metrics, generation of dependency graphs, and software evolution analysis.

### Features

* Analyze source code in C, C++, Java and C#. Support for other languages is
  relatively easy to add. Currently this task is executed by the Doxyparse.

* Extract source code metrics. analizo supports 15+ modules metrics, 7+ project
  metrics, and descriptive statistics for all module metrics.

* Extract metrics from a large number of projects in batch mode. You put all
  the projects you want to analyze in one directoty and analizo takes care of
  the rest.

* Extract metrics from VCS repositories. Analizo can give you the evolution of
  metrics values associated with change metadata for the entire history of your
  project.

* Draw dependency graphs. With the help of Graphviz, analizo will help you with
  the visualization of the dependencies between modules in our project.

* Help you with software evolution analysis. Analizo can analyze several
  versions of your project producing an evolution matrix, which help you
  understand what happens with your code through time.

### History

Analizo was created by Antonio Terceiro as a support tool for his PhD thesis.
Analizo was initially based on [egypt](http://www.gson.org/egypt/) by Andreas
Gustafsson, but currently very little of egypt's code is left.  Analizo has
been co-developed by Antonio Terceiro, Joenio Costa, João Miranda and Paulo
Meirelles. The work on Analizo has been supported by the following
organizations:

* [LES-UFBA](http://les.dcc.ufba.br/)
* [INES](http://www.ines.org.br/)
* [CNPQ](http://www.cnpq.br/)
* [FAPESB](http://www.fapesb.ba.gov.br/)
* [CCSL-USP](http://ccsl.ime.usp.br/)
* [Qualipso project](http://www.qualipso.org/)

### User documentation

* [Manual pages and Source code metrics][cpan]
* [Frequently Asked Questions](faq.html)
* [Video demonstration](https://www.youtube.com/embed/CrUobMUImDU)

### Publications

* [Analizo: an Extensible Multi-Language Source Code Analysis and Visualization Toolkit](publications/analizo-cbsoft2010-tools.pdf), by Antonio Terceiro , Joenio Costa , João Miranda, Paulo Meirelles, Luiz Romário Rios, Lucianna Almeida, Christina Chavez, and Fabio Kon. Paper published in the Tools Session of the *1st Brazilian Conference on Software*, September 2010. *Describes analizo, its architecture and research work using analizo.* [full text (PDF)](publications/analizo-cbsoft2010-tools.pdf) \| [bibtex](publications/analizo-cbsoft2010-tools.bib) \| [slides (PDF)](publications/analizo-cbsoft2010-tools-slides.pdf)

### Download

Analizo latest version can be obtained from [CPAN][cpan] or [GitHub][github],
see [installation instructions][install] for details how to install.

You can see what's new latest version in the [CHANGELOG][changelog] file.

### Getting in touch

Help regarding Analizo usage can be obtained in the [Analizo mailing
list][list].  You can also browse the [list archive][list] to see whether
your problem was already discussed before or not.

You can also find us at IRC: channel `#analizo` on the [Freenode
network](http://freenode.net/).

### Reporting bugs

Report bugs [at Github]({{ site.analizo_github }}/issues).

### Contributing

Source code is available [at Github]({{ site.analizo_github }}).
See [development tips][hacking] and
[profiling tips][profiling].

<script type='text/javascript' src='https://ko-fi.com/widgets/widget_2.js'></script>
<script type='text/javascript'>kofiwidget2.init('Support Me on Ko-fi', '#ff551c', 'H2H41AOOZ');kofiwidget2.draw();</script>

Or buy a Coffee to support me keep working on Analizo.

## Works citing Analizo

- Z. Mushtaq, G. Rasool and B. Shehzad, "Multilingual Source Code Analysis: A Systematic Literature Review," in IEEE Access, vol. 5, pp. 11307-11336, 2017, doi: 10.1109/ACCESS.2017.2710421. https://doi.org/10.1109/ACCESS.2017.2710421

[cpan]: https://metacpan.org/release/Analizo
[changelog]: {{ site.analizo_github }}/blob/master/CHANGELOG.md
[install]: {{ site.analizo_github }}/blob/master/INSTALL.md
[github]: {{ site.analizo_github }}/releases/latest
[list]: https://groups.google.com/forum/#!forum/analizo
[hacking]: {{ site.analizo_github }}/blob/master/HACKING.md
[profiling]: {{ site.analizo_github }}/blob/master/PROFILING.md
