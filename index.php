<?
ini_set('display_errors',0);
ini_set('display_startup_errors',0);
error_reporting(0);
session_start();
require_once 'config.php';
include_once 'functions.php';

if(isset($_GET['logout'])){
session_unset();
$_SESSION['triplet'] = NULL;
header("Location: index.php");
}

if($_POST['users']){

$player=$_POST['users'];
$charname=$_POST['char'];
$password=$_POST['pass'];
$charname=strip_tags($charname);
$password=strip_tags($password);
$password=addslashes($password);
$charname=addslashes($charname);
$charname=ucfirst($charname);
$player=addslashes($player);
$isa="SELECT * from accounts where login='$player' and password=password('$password')"  or die("Error in the consult.." . mysqli_error($db1)); 
$isa1 = $db1->query($isa) or die("Error " . mysqli_error($db1));
$isa2 = mysqli_fetch_array($isa1);
if($isa2['login']==$player){

$accid=$isa2['id'];
$ischar = "SELECT * from chars where accid='$accid' and charname='$charname'"  or die("Error in the consult.." . mysqli_error($db1)); 
$ischar1 = $db1->query($ischar) or die("Error " . mysqli_error($db1));
$ischar2 = mysqli_fetch_array($ischar1);
if($ischar2['charname']==$charname){
$charid=$ischar2['charid'];

$_SESSION['triplet']=$charid;


}
}
}


?>

<!DOCTYPE html>
<html lang="en">
  <head>

    <title>Era &bull; Triple Triad</title>

</head>
  <body>
  <?
if(!isset($_SESSION['triplet'])){
include_once 'login.php';
}
else{
$charid=$_SESSION['triplet'];
$ischar = "SELECT * from chars where charid='$charid'"  or die("Error in the consult.." . mysqli_error($db1)); 
$ischar1 = $db1->query($ischar) or die("Error " . mysqli_error($db1));
$ischar2 = mysqli_fetch_array($ischar1);

$sql = "SELECT charid, SUM(quantity) FROM tt_char_cards GROUP BY charid";
$res = $db1->query($sql) or die("Error " . mysqli_error($db1));
$row = mysqli_fetch_array($res);
$deck=$row['SUM(quantity)'];			
if(!$deck){
$deck=0;
}

print "Welcome $ischar2[charname]<br><a href=?deck>View Deck ($deck)</a>";


// Add level 1 cards to deck if deck is below 5 cards //
if($deck<=4){
add_cards($charid,1,11);
}
// View Deck //
if(isset($_GET['deck'])){
include_once 'deck.php';
}
		
}
  ?>
  </body>
</html>