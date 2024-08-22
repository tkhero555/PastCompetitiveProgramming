<?php
$n = trim(fgets(STDIN));
$array = array_map('intval', explode(' ', trim(fgets(STDIN))));

$rate_color = array();
$over_3200_number = 0;

$rate_boaders = array(1, 400, 800, 1200, 1600, 2000, 2400, 2800, 5050);

foreach ($array as $a) {
  if ($a >= 3200) {
    $over_3200_number++;
    continue;
    
  }

  for ($j = 0; $j < 8; $j++) {
    if ($a >= $rate_boaders[$j] && $a < $rate_boaders[$j + 1]) {
      $rate_color[] = $j;
    }
  }
}

$rate_color = array_unique($rate_color);
$max = count($rate_color) + $over_3200_number;
$min = max(count($rate_color), 1);
echo "$min $max\n";
