<?php
$ob = Hj\M("ims_weisrc_dish_ad");
$adlist = $ob->where(
    array(
        'position'=>'3',
        'uniacid'   => '6',
        'starttime'=>array('ELT',time()),
        'endtime'=>array('EGT',time()),
        'status'=>'1'
    ))->order(array('displayorder'=>'asc'))->select();

    foreach($adlist as $key=>$value){
        if(strpos($value['thumb'], 'http://')===false){
            $adlist[$key]['thumb'] = '/attachment/'.$value['thumb'];
        }
    }
//     echo $ob->getLastSql();