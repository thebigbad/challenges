<?php

$sum = 0;
$sum_of_squares = 0;

for ($i = 1; $i <= 100; $i++) {
  $sum += $i;
  $sum_of_squares += $i * $i;
}

print $sum * $sum - $sum_of_squares . "\n";
