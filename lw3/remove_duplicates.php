<?php
header("Content-Type: text/plain");

if($argc < 1){
    echo "Incorrect number of arguments! \n Usage php remove_duplicates.php <input string>";
}
echo join(array_unique(str_split($argv[1])));