<?php


$example = [1,2,3,4,5,6,7,8,9];

function rotation_arr($source, $d1, $d2){
	
	$arr = array_slice($source, $d1);
	$narr = array_slice($source, $d2, $d1);
	
	return array_merge($arr, $narr);
	
}

print_r( rotation_arr($example, 2, 0) );

// output = Array ( [0] => 3 [1] => 4 [2] => 5 [3] => 6 [4] => 7 [5] => 8 [6] => 9 [7] => 1 [8] => 2 )