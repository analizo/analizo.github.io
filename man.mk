MAN2HTML += man/analizo-evolution-matrix.html
man/analizo-evolution-matrix.pm: ../lib/Analizo/Command/evolution_matrix.pm
	@mkdir -p man
	@cp $< $@
man/analizo-evolution-matrix.html: man/analizo-evolution-matrix.pm
MAN2HTML += man/analizo-metrics-batch.html
man/analizo-metrics-batch.pm: ../lib/Analizo/Command/metrics_batch.pm
	@mkdir -p man
	@cp $< $@
man/analizo-metrics-batch.html: man/analizo-metrics-batch.pm
MAN2HTML += man/analizo-tree-evolution.html
man/analizo-tree-evolution.pm: ../lib/Analizo/Command/tree_evolution.pm
	@mkdir -p man
	@cp $< $@
man/analizo-tree-evolution.html: man/analizo-tree-evolution.pm
MAN2HTML += man/analizo-help.html
man/analizo-help.pm: ../lib/Analizo/Command/help.pm
	@mkdir -p man
	@cp $< $@
man/analizo-help.html: man/analizo-help.pm
MAN2HTML += man/analizo-metrics-history.html
man/analizo-metrics-history.pm: ../lib/Analizo/Command/metrics_history.pm
	@mkdir -p man
	@cp $< $@
man/analizo-metrics-history.html: man/analizo-metrics-history.pm
MAN2HTML += man/analizo-graph.html
man/analizo-graph.pm: ../lib/Analizo/Command/graph.pm
	@mkdir -p man
	@cp $< $@
man/analizo-graph.html: man/analizo-graph.pm
MAN2HTML += man/analizo-metrics.html
man/analizo-metrics.pm: ../lib/Analizo/Command/metrics.pm
	@mkdir -p man
	@cp $< $@
man/analizo-metrics.html: man/analizo-metrics.pm
MAN2HTML += man/analizo-dsm.html
man/analizo-dsm.pm: ../lib/Analizo/Command/dsm.pm
	@mkdir -p man
	@cp $< $@
man/analizo-dsm.html: man/analizo-dsm.pm
MAN2HTML += man/analizo.html
man/analizo.pm: ../lib/Analizo.pm
	@mkdir -p man
	@cp $< $@
man/analizo.html: man/analizo.pm
man/index.html: man/index.pm
MAN2HTML += man/index.html
