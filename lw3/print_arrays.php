<?php
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
for($i = 0; $i < count($intArray); ++$i) {
    echo "$intArray[$i] ";
}
echo "<br>";
echo "Array of function = ";
print_r($phpFunction);
echo "<br>";
echo "matrix = ";
print_r($matrix);