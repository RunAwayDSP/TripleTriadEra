<?

function add_cards($charid,$first,$last)
{
require_once 'config.php';
//Adding first through last cards to deck//
for ($i = $first; $i <= $last; $i++) {

$is = "SELECT * from tt_char_cards where charid='$charid' and cardid='$i'"  or die("Error in the consult.." . mysqli_error($db1)); 
$is1 = $db1->query($is) or die("Error " . mysqli_error($db1));
$is2 = mysqli_fetch_array($is1);
if(!$is2){
//Dont have the card//
$query = "INSERT INTO tt_char_cards (charid,cardid,quantity) VALUES ('$charid','$i','1')" or die("Error in the consult.." . mysqli_error($db1));
$result = $db1->query($query) or die("Error " . mysqli_error($db1));
}else{
//Has the card add 1 more//
$query = "UPDATE tt_char_cards SET quantity=quantity+'1' where charid='$charid' and cardid='$i'" or die("Error in the consult.." . mysqli_error($db1));
$result = $db1->query($query) or die("Error " . mysqli_error($db1));
}
}
}

?>