<?php

class Car {
    function __construct($model, $color, $year) {
        $this->model = $model;
        $this->color = $color;
        $this->year = $year;
    }

    function print_model() {
        echo $this->model . "\n";
    }
}

$my_car = new Car("lamborghini", "red", 2011);
$my_car->print_model();
echo $my_car->year . "\n";

?>