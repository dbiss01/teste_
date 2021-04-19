<?php
$exemplo = array(2,3,4,23,53,762,21,80,56,5,42,98,100); // numeros aleatórios em integer

$impares = array(); // start de array impar
$pares = array(); // start de array par

foreach( $exemplo as $valor ) { //abrir o array em loop

	( $valor % 2 == 0 ? $pares[] = $valor : $impares[] = $valor );
	// se o resto da divisão for igual a 0 o numero é inserido no array de pares.
}

sort($pares); // ordenando o array de pares para crescente
rsort($impares); // ordenando o array de impares para decrescente

$retorno = array_merge($pares, $impares); // mesclagem dos array em 1

print_r($retorno); // output em formato de array

// RESULTADO
// Array
// (
//     [0] => 2
//     [1] => 4
//     [2] => 42
//     [3] => 56
//     [4] => 80
//     [5] => 98
//     [6] => 100
//     [7] => 762
// )
// Array
// (
//     [0] => 53
//     [1] => 23
//     [2] => 21
//     [3] => 5
//     [4] => 3
// )