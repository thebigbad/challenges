#!/usr/bin/perl

use strict;
use warnings;
use List::Util qw(reduce);

my $limit = 9999;
my $biggest = 0;

for (my $i = 1; $i <= $limit; $i++) {
  my $j = 2;
  my $p = 0;
  while (length $p <= 9) {
    $p = concatenated_product($i, $j);
    if (length $p == 9 && is_pandigital($p) && $p > $biggest) {
      $biggest = $p;
    }
    $j++;
  }
}

print "$biggest\n";

sub concatenated_product {
  my ($n, $k) = @_;
  return int reduce { $a . $b } map { $n * $_ } (1 .. $k);
}

sub is_pandigital {
  my $n = shift;
  my @digits = sort(map(int, split('', $n)));
  for (my $i = 1; $i <= scalar @digits; $i++) {
    return 0 if ($digits[$i - 1] != $i);
  }
  return 1;
}
