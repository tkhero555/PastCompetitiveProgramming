<?php
$array = str_split(trim(fgets(STDIN)));
$remove_strings = ["a", "e", "i", "o", "u", "A", "E", "I", "O", "U"];

$result = array_filter($array, function($value) use ($remove_strings) {
  return !in_array($value, $remove_strings); 
});


echo implode($result);
