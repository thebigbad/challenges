#!/usr/bin/perl

use strict;
use warnings;

my $c = 600851475143;
my $i = 3;
my $l = int(sqrt($c));
my $last = 3;

while ($i < $l) {
  if ($c % $i == 0) {
    $last = $c / $i;
    $c = $c / $i;
    $l = int(sqrt($c));
  }
  $i += 2;
}

print "$last\n";
