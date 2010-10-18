<?php

$i = 600851475143;
$j = 1;

while ($i > $j) {
  $j += 2;
  if (fmod($i, $j) == 0) {
    $i = $i / $j;
  }
}

print "$j\n";
