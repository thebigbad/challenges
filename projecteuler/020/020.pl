#!/usr/bin/perl

use strict;
use warnings;
use bignum;
use List::Util qw(sum);

my $n = 100;
my $n_factorial = 1;
for (my $i = 1; $i <= $n; $i++) {
  $n_factorial *= $i;
}
my $string = "$n_factorial";
my $sum = sum(map(int, split('', $string)));

print "$sum\n";
