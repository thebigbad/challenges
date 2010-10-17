#!/usr/bin/perl

use strict;
use warnings;

sub isPrime {
  my $n = shift;
  return 0 if ($n % 2 == 0);
  for (my $i = 3; $i < sqrt($n); $i += 2) {
    return 0 if ($n % $i == 0);
  }
  return 1;
}

my $nminus2 = 1;
my $nminus1 = 1;
my $n = 2;

until ($n > 227000 && isPrime($n)) {
  $nminus2 = $nminus1;
  $nminus1 = $n;
  $n = $nminus2 + $nminus1;
}

print "X: $n\n";

my $m = $n + 1;

# P + 1 % 2 == 0 for all P > 2
my $sum = 2;
for (my $i = 3; $i < sqrt($m); $i += 2) {
  if ($m % $i == 0 && isPrime($i)) {
    $sum += $i;
  }
}

print "sum: $sum\n";
