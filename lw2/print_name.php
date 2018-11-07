<?php
$name = "";
if(isset($_GET['name'])){
    $name = $_GET['name'];
}
echo "Hello, Dear $name !";