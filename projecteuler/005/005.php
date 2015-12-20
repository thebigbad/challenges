<?php

/* 8/31/09 */

$n = 20;

function listOfIntsToN ($n) {
  $ints = array();
  for ($i = 1; $i <= $n; $i++) {
    $ints[] = $i;
  }
  return $ints;
}

$ints = listofIntsToN($n);

function isPrime($n) {
  $sqrt = sqrt($n);
  for ($i = 2; $i <= $sqrt; $i++) {
    if ($n % $i == 0) {
      return false;
    }
  }
  return true;
}

function findSolnRecursive ($product, $multiple, $ints) {
  if (count($ints) == 0) {
    return $product;
  }

  $filteredInts = array();
  foreach ($ints as $int) {
    if ($product % $int != 0) {
      $filteredInts[] = $int;
    }
  }

  if (count($filteredInts) < count($ints)) {
    return findSolnRecursive($product, $product, $filteredInts);
  }

  if (isPrime($ints[0])) {
    $product *= array_shift($ints);
    return findSolnRecursive($product, $product, $filteredInts);
  }

  $product += $multiple;
  return findSolnRecursive($product, $multiple, $filteredInts);
}

print findSolnRecursive(1, 1, $ints) . "\n";
