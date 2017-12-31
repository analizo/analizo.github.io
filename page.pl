use strict;
use Text::Template;
use File::Basename;
use lib './analizo/lib';
use Analizo;

my $data = {
  version   => $Analizo::VERSION,
};

my $text = '';
while (<STDIN>) {
  $text .= $_;
}

my $expand = Text::Template->new(
  TYPE => 'STRING',
  SOURCE => $text,
);
my $body = $expand->fill_in(HASH => $data);
$data->{body} = $body;

my $title = 'Analizo';
if ($body =~ /<h1[^>]*>([^<]*)<\/h1>/im) {
  $title = $1 . ' — Analizo';
}
$data->{title} = $title;

my $template = Text::Template->new(
  TYPE => 'FILE',
  SOURCE => 'template.html.tt'
);

print $template->fill_in(HASH => $data);
