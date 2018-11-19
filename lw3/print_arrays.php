<?php
header("Content-Type: text/plain");

$intArray = [2, 3, 5, 7, 11, 13, 17, 19, 23, 29];
$phpFunction = array("count" => "Определяет количество элементов в массиве",
    "is_array" => "Определяет, является ли переменная массивом",
    "array_merge" => "Слить два или большее количество массивов",
    "empty" => "Определяет, установлена ли переменная.",
    "print_r" => "Печатает читабельную информацию о переменной.");
$matrix = [[1, 0, 0, 0],
    [0, 1, 0, 0],
    [0, 0, 1, 0],
    [0, 0, 0, 1]
];
echo "Array of prime numbers = ";
rint_r(PRIME_ARRAY);
echo "<br>";
echo "Array of function = ";
print_r(ARRAY_FUNC);
echo "matrix = ";
print_r(UNIT_MATRIX4x4);