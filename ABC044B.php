<?php
$w = trim(fgets(STDIN));
$array = str_split($w);

$counteds = array_count_values($array);

$result = "Yes";

foreach ($counteds as $counted) {
  if ($counted % 2 == 1){
    $result = "No";
    break;
  }
}

echo $result;