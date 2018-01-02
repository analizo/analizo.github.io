use strict;
use File::Basename;
use File::Copy;

mkdir 'man';
my @index = ();
print "analizo/lib/Analizo.pm → man/analizo.pm\n";
copy 'analizo/lib/Analizo.pm', 'man/analizo.pm';
for my $script (glob 'analizo/lib/Analizo/Command/*.pm') {
  my $target = 'man/analizo-' . lc(basename $script);
  $target =~ s/_/-/g;
  print "$script → $target\n";
  copy $script, $target;
  push @index, basename($target, '.pm');
}

print "[CREATE INDEX] → man/index.pm\n";
open MANINDEX, '>', 'man/index.pm';
print MANINDEX <<EOF;

=head1 Manual pages

The following manual pages are available:

=begin html

<ul>
EOF
for my $cmd (sort @index) {
  print MANINDEX "<li><a href='$cmd.html'>$cmd</a></li>\n";
}
print MANINDEX <<EOF;
</ul>

=end html
EOF
close MANINDEX;
