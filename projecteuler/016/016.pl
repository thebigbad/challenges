#!/usr/bin/perl

use strict;
use warnings;
use bignum;
use List::Util qw(sum);

my $n = 2 ** 1000;
my $string = "$n";
my $sum = sum(map(int, split('', $string)));

print "$sum\n";
