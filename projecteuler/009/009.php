<?php

$a = 1;
$b = 2;
$c = 997;

for ($a = 1; $a <= 332; $a++) {
  $B = floor((1000 - $a) / 2) - 1;
  for ($b = 2; $b <= $B; $b++) {
    $c = 1000 - $b - $a;
    if (($a * $a) + ($b * $b) == ($c * $c)) {
      die($a * $b * $c . "\n");
    }
  }
}
