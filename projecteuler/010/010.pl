#!/usr/bin/perl

use strict;
use warnings;

my $nth_prime = 2_000_000;
my $sum = 2;

for (my $i = 3; $i < $nth_prime; $i += 2) {
  if (is_prime_over_2($i)) {
    $sum += $i;
  }
}

print "$sum\n";

sub is_prime_over_2 {
  my $n = shift;
  my $mid = sqrt($n);
  for (my $i = 3; $i <= $mid; $i += 2) {
    return 0 if ($n % $i == 0);
  }
  return 1;
}
