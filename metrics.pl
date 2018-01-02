use strict;
use File::Basename;
use File::Copy;

mkdir 'metrics';

mkdir 'metrics/module';
my @modules = ();
for my $script (glob 'analizo/lib/Analizo/Metric/*.pm') {
  my $target = 'metrics/module/' . basename($script);
  print "$script → $target\n";
  copy $script, $target;
  push @modules, basename($target, '.pm');
}

mkdir 'metrics/global';
my @global = ();
for my $script (glob 'analizo/lib/Analizo/GlobalMetric/*.pm') {
  my $target = 'metrics/global/' . basename($script);
  print "$script → $target\n";
  copy $script, $target;
  push @global, basename($target, '.pm');
}

print "[CREATE INDEX] → metrics/index.pm\n";
open MANINDEX, '>', 'metrics/index.pm';
print MANINDEX <<EOF;

=head1 Source code metrics

The following source code metrics are supported by Analizo:

=head2 Global metrics

=begin html

<ul>
EOF
for my $cmd (sort @global) {
  (my $title = $cmd) =~ s/([[:upper:]][[:lower:]]+)/\1 /g;
  print MANINDEX "<li><a href='global/$cmd.html'>$title</a></li>\n";
}
print MANINDEX <<EOF;
</ul>

=end html

=head2 Module metrics

=begin html

<ul>
EOF
for my $cmd (sort @modules) {
  (my $title = $cmd) =~ s/([[:upper:]][[:lower:]]+)/\1 /g;
  print MANINDEX "<li><a href='module/$cmd.html'>$title</a></li>\n";
}
print MANINDEX <<EOF;
</ul>

=end html

EOF
close MANINDEX;
