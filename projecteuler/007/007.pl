#!/usr/bin/perl

use strict;
use warnings;

my $nth_prime = 10001;

my $counter = 1;
my $i = 3;
my $last = 1;

while ($counter < $nth_prime) {
  if (is_prime_over_2($i)) {
    $counter++;
    $last = $i;
  }
  $i += 2;
}

print "$last\n";

sub is_prime_over_2 {
  my $n = shift;
  my $mid = sqrt($n);
  for (my $i = 3; $i <= $mid; $i += 2) {
    return 0 if ($n % $i == 0);
  }
  return 1;
}
