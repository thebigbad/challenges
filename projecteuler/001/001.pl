#!/usr/bin/perl

use strict;
use warnings;

my $threes = 0;
for (my $i = 0; $i < 1000; $i += 3) {
  $threes += $i;
}

my $fives = 0;
for (my $i = 0; $i < 1000; $i += 5) {
  $fives += $i;
}

# multiples of 15 will get counted twice
my $fifteens = 0;
for (my $i = 0; $i < 1000; $i += 15) {
  $fifteens += $i;
}

my $sum += $threes + $fives - $fifteens;

print "$sum\n";
