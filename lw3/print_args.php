<?php
header("Content-Type: text/plain");

if($argc > 1)
{
    echo "Number of Arguments : $argc \n";
    echo "Arguments : ";
    for($i = 0; $i < $argc; ++$i) {
        if($i > 0) {
            echo "$argv[$i] ";
        }
    }
} else {
    echo "No parameters were specified!";
}