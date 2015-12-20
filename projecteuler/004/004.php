<?php

/*
Approach on 8/30/09: start with test if product is palindromic.
*/

function isPalidromic ($n) {
  $string = strval($n);
  return $string == strrev($string);
}

function findPalidromic ($i, $j, $biggest) {
  $product = $i * $j;
  if (isPalidromic($product)) {
    if ($product > $biggest) {
      return findPalidromic($i - 1, $i - 1, $product);
    }
    return findPalidromic($i - 1, $i - 1, $biggest);
  }
  if ($i == 100) {
    return $biggest;
  }
  if ($product < $biggest) {
    return findPalidromic($i - 1, $i - 1, $biggest);
  }
  return findPalidromic($i, $j - 1, $biggest);
}

print findPalidromic(999,999,0) . "\n";
