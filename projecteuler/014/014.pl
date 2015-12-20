#!/usr/bin/perl

use strict;
use Memoize;

memoize('count_hailstones');

my $highest_start = 13;
my $highest_count = 10;
for(my $i = 15; $i < 1_000_000; $i += 2) {
  my $count = count_hailstones($i);
  if ($count > $highest_count) {
    $highest_start = $i;
    $highest_count = $count;
  }
}
print "$highest_start: $highest_count\n";

sub count_hailstones {
  my $n = shift;
  return 1 if ($n == 1);
  return 1 + count_hailstones($n / 2) if ($n % 2 ==0);
  return 1 + count_hailstones((3* $n) + 1);
}
