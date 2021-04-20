<?php

// Ultima linha executa o script

// função para converter o formato da data
// 1º parametro obrigatorio
// Se 2º e 3º parametro não for definido entrarão os defaults
function formatBRtoUS($str, $what='/', $for='-'){
    // quebra a string que veio onde tiver a barra (funcão explode())
    // reordeno as partes ao contrário (array_reverse())
    // monta as partes da string usando o traço (parametro $for)
    return implode($for, array_reverse(explode($what, $str)));
}

function calculaIntervaloEmDias($data0, $data1){
    //conversão das datas
    $data2=formatBRtoUS($data0);
    $data3=formatBRtoUS($data1);
    //usa a função da classe DateTime https://www.php.net/manual/pt_BR/class.datetime.php
    // a função date_crete retorna um objeto a partir da string
    $data4=date_create($data2);
    $data5=date_create($data3);
    // função date_diff retorna um objeto pronto da diferença das data
    $diff=date_diff($data4,$data5);
    
    return $diff->format("%a");//formata para capturar somente o numero de dias
}

// call da função principal com as datas de exemplo
echo calculaIntervaloEmDias("05/03/2021", "09/03/2020");