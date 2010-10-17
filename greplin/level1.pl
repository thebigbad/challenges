#!/usr/bin/perl

open(my $file, 'level1.txt');
my $text = <$file>;
close($file);

chomp($text);

# generate list of all substrings
my %strings;

sub gen_substrings {
  my $string = shift;
  if (defined($strings{$string})) {
    return ();
  }
  $strings{$string} = 1;
  my $l = length($string);
  if ($l == 3) { return ($string); }

  my $first = substr($string, 0, $l - 1);
  my $last = substr($string, 1);
  return ($string, gen_substrings($first), gen_substrings($last));
}

my @substrings = gen_substrings($text);

# filter palindrones
my @palindrones = grep { $_ eq reverse($_) } @substrings;

# sort by length, take first
my @sorted = sort { length($b) <=> length($a) } @palindrones;

print shift(@sorted) . "\n";
