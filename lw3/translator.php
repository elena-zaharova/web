<?php
header("Content-Type: text/plain; charset=UTF-8");

const phpDictionary = ["Keyboard" => "Клавиатура",
    "Cat" => "Кошка",
    "Dog" => "Собака",
    "Home" => "Дом",
    "Hello" => "Привет"];

function Translation($keyWord) {
    if (array_key_exists($keyWord, phpDictionary)) {
        $translation = phpDictionary[$keyWord];
    } else {
        $translateWord = array_search($keyWord, phpDictionary);
        if ($translateWord != false) {
            $translation = $translateWord;
        } else {
            header('HTTP/1.1 404 Not Found');
            throw new Exception("запрошен перевод неизвестного слова!");
        }
    }

    return $translation;
}

try {
    $paramsNumber = count($_GET);
    if ((!isset($_GET['word'])) || ($paramsNumber != 1) || ($_GET['word'] == "")) {
        header('HTTP/1.1 400 Bad Request');
        throw new Exception("параметр word отсутствует, или задан неверно!");
    }

    echo Translation($_GET['word']);
} catch(Exception $ex) {
    echo $ex->getMessage();
}