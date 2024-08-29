<?php
$n = (int)trim(fgets(STDIN));
$inputs = [];
while ($input = trim(fgets(STDIN))) {
  $inputs[] = array_map('intval', explode(" ", $input));
}

$result_array = [];

foreach ($inputs as $one_day) {
  $result_array[] = $one_day[0] + $one_day[1] + (24 - $one_day[2]);
}

echo min($result_array)."\n";
echo max($result_array)."\n";