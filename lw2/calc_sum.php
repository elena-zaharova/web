<?php
header("Content-Type: text/plain");

     $arg1 = 0;
     $arg2 = 0;
     $result = 0;
     if(isset($_GET['arg1'])){
         $arg1 = $_GET['arg1'];
     }
     if(isset($_GET['arg2'])){
         $arg2 = $_GET['arg2'];
     }
     $result = $arg1 + $arg2;
     echo $result;