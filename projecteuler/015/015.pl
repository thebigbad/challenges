#!/usr/bin/perl

use strict;
use warnings;
use Memoize;

memoize('paths');

print paths(20, 0, 0) . "\n";

sub paths {
  my ($size, $x, $y) = @_;
  return 1 if ($x == $size || $y == $size);
  return paths($size, $x + 1, $y) + paths($size, $x, $y + 1);
}
