<?php
$argc;
$argv;
if($argc < 1){
    echo "Incorrect number of arguments! \n Usage php remove_duplicates.php <input string>";
} elseif(!empty($argv[1])) {
    echo join(array_unique(str_split(argv[1])));
}