<?php
list($shop_number, $month) = array_map('intval', explode(" ", trim(fgets(STDIN))));
list($building_cost, $people_cost, $profit) = array_map('intval', explode(" ", trim(fgets(STDIN))));
$inputs = [];
while ($input = (int)trim((fgets(STDIN)))) {
    $inputs[] = $input;
}

$result = 0;

foreach($inputs as $ramen_number){
    if ($profit * $ramen_number - $building_cost - $people_cost * $month < 0){
        $result++;
    }
}

echo $result;
