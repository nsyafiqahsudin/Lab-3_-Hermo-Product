<?php
//header("Content-type:text/xml");
//header("Access-Control-Allow-Origin: *");
header('Content-Type: application/xml');

$host = "localhost";
$username = "root";
$password = "";
$dbname = "hermo_product";

// Connect to db and query student table items.
$dbconn = mysqli_connect($host, $username, $password, $dbname);

//var_dump($dbconn);

$query = mysqli_query($dbconn, "select * from hermo_product");

$xml = new SimpleXMLElement('<product_list/>');

while ($row = mysqli_fetch_array($query)) {
   
    $product = $xml->addChild("product");
    $product->addChild("name", $row["name"]);
    $product->addChild("price", $row["price"]);
    $product->addChild("description", $row["description"]);
    $product->addChild("image", $row["image"]);
    
    
}


mysqli_close($dbconn);

echo $xml->asXML();

?>


