<?php

function TpSqlLog($log){
// 	var_dump($log);

//     logResult("------------.");
    if(class_exists('WeUtility')){
        WeUtility::logging('HjSql',$log['0']);
    }
    
}

?>