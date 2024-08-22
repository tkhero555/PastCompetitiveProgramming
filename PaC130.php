<?php
$n = (int)trim(fgets(STDIN));
$inputs = [];
while ($input = trim((fgets(STDIN)))) {
    $inputs[] = explode(" ", $input);
}

$result = 0;
$result_array = [];

foreach($inputs as $index => $answer){
  if ($answer[0] === 'y' && $answer[1] === 'y') {
    continue;
} else {
    $result++;
    $result_array[] = $index + 1; 
}
}

echo "$result\n";
foreach($result_array as $a){
    echo "$a\n";
}