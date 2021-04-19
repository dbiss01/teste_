<?php

$example = [1,2,3,4,5,6,7,8,9];

function rotation_arr($source, $d1, $d2){
	
	$arr = array_slice($source, $d1);
	$narr = array_slice($source, $d2, $d1);
	
	return array_merge($arr, $narr);
	
}

print_r( rotation_arr($example, 2, 0) );