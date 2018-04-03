<?php

// create an array of numbers
$numbers = array(2, 4, 6);
echo $numbers[2] . "\n";

// create a map representing a car
$car = array("color" => "red", "model" => "lamborghini", "year" => 2011);
// print some elements
echo $car["color"] . "\n";
echo $car["year"] . "\n";

// add a new element to the map
$car["owner"] = "tommy";
echo $car["owner"] . "\n";

// print out the entire array
foreach($car as $key => $value)
    echo $key . ": " . $value . "\n";

?>