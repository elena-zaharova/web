<?php
header("Content-Type: text/plain");

     $query_string = "";
     if(isset($_SERVER['QUERY_STRING'])){
         $query_string = $_SERVER['QUERY_STRING'];
     }
     echo "Query string = $query_string";