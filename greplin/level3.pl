#!/usr/bin/perl

use strict;
use warnings;
use List::Util qw(sum);

open(my $file, 'level3.csv');
my $text = <$file>;
close($file);

my @numbers = map(int, split(', ', $text));

my $l = scalar(@numbers);
my $p = 2 ** $l;

my $count = 0;

for (my $i = 1; $i < $p; $i++) {
  my @set;
  for (my $j = 0; $j < $l; $j++) {
    push(@set, $numbers[$j]) if (($i >> $j) & 1);
  }
  if (scalar(@set) > 1) {
    my $highest = pop(@set);
    if ($highest == sum(@set)) {
      $count++;
    }
  }
}

print "$count\n";
