#!/usr/bin/perl

use strict;
use warnings;

my $sum = 2;

my $last = 1;
my $cur = 2;
while ($cur < 4000000) {
  my $save_last = $last;
  $last = $cur;
  $cur = $cur + $save_last;
  if ($cur % 2 == 0) {
    $sum += $cur;
  }
}

print "$sum\n";
