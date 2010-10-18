#!/usr/bin/perl
use strict;
use warnings;
use Memoize;
use bigint;

my $digits = 1000;

memoize("fib");

my $n = 3;
while (length(fib($n)) < $digits) {
  $n++;
}

print "$n\n";

sub fib {
  my $n = shift;
  return 1 if ($n < 3);
  return fib($n - 1) + fib($n - 2);
}
