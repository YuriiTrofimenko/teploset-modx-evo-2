<?php
//@author webber (web-ber12@yandex.ru)

if (!defined('MODX_BASE_PATH')) {
    die('What are you doing? Get out of here!');
}

//активный язык отдельно от списка
$activeLang = '<div id="curr_lang"><a href="javascript:;">[+name+]</a></div>'; 

//активный язык в списке
$activeRow = '<div class="active"><a href="[+url+]">[+name+]</a></div>';

//неактивный язык списка
$unactiveRow = '<div><a href="[+url+]">[+name+]</a></div>';

//обертка списка языков
$langOuter = '<div class="other_langs">[+wrapper+]</div>';
