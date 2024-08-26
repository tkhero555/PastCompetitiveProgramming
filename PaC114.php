<?php
$n = trim(fgets(STDIN));
$strings = [];
while ($input = trim(fgets(STDIN))) {
    $strings[] = str_split($input);
}

$result = "Yes";

for ($i = 0; $i < $n-2; $i++){
    if (end($strings[$i]) == $strings[$i+1][0]) {
      continue;
    } else {
      $result = end($strings[$i]).' '.$strings[$i+1][0]."\n";
      break;
    }
}

echo $result;