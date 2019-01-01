<?
$HOME = dirname(__FILE__); // Указываем папку с которой начать рекурсивный поиск
$WIN = 0; //Если север на windows, то указать 1

// Рекурсивный поиск
function RecursiveFolder($sHOME)
{
    global $BOMBED, $WIN;
    $win32 = ($WIN == 1) ? "\\" : "/";
    $folder = dir($sHOME);
    $foundfolders = array();
    while ($file = $folder->read()) {
        if ($file != "." and $file != "..") {
            if (filetype($sHOME . $win32 . $file) == "dir") {
                $foundfolders[count($foundfolders)] = $sHOME . $win32 . $file;
            } else {
                $content = file_get_contents($sHOME . $win32 . $file);
                $BOM = SearchBOM($content);
                if ($BOM) {
                    $BOMBED[count($BOMBED)] = $sHOME . $win32 . $file;
                    // Удаляет 3 символа из начала файла
                    $content = substr($content, 3);
                    // Результат записывает в исходный файл
                    file_put_contents($sHOME . $win32 . $file, $content);
                }
            }
        }
    }
    $folder->close();
    if (count($foundfolders) > 0) {
        foreach ($foundfolders as $folder) {
            RecursiveFolder($folder, $win32);
        }
    }
}

// Поиск BOM в файле
function SearchBOM($string)
{
    if (substr($string, 0, 3) == pack("CCC", 0xef, 0xbb, 0xbf)) return true;
    return false;
}

?>
<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="utf-8">
    <title>Поиск и удаление UTF8 BOM</title>
</head>
<body>
<div class="FOUND">
    <?
    $BOMBED = array();
    RecursiveFolder($HOME);
    $list = '';
    foreach ($BOMBED as $utf) {
        $list .= $utf . "<br />\n";
    }
    if (!empty($list)) {
        ?>
        <h2>BOM был найден в:</h2>
        <?= $list; ?>
    <? } else { ?>
        <h2>BOM не найден</h2>
    <? } ?>
</div>
</body>
</html>
