<h1>Your Deck</h1>
<?
print "<table width=100%><tr><td></td><td>Card</td><td>Name</td><td>Element</td><td>Level</td><td>Quantity</td></tr>";
$is = "SELECT * from tt_char_cards where charid='$charid' order by cardid"  or die("Error in the consult.." . mysqli_error($db1)); 
$is1 = $db1->query($is) or die("Error " . mysqli_error($db1));
while($is2 = mysqli_fetch_array($is1)){

$cards = "SELECT * from tt_cards where ID='$is2[cardid]'"  or die("Error in the consult.." . mysqli_error($db1)); 
$cards1 = $db1->query($cards) or die("Error " . mysqli_error($db1));
$cards2 = mysqli_fetch_array($cards1);	
$element=$cards2['element'];

if($cards2[top]==10){
$cards2[top]=A;
}
if($cards2[left]==10){
$cards2[top]=A;
}
if($cards2[right]==10){
$cards2[top]=A;
}
if($cards2[bottom]==10){
$cards2[top]=A;
}
print "<tr><td><table><tr><td colspan=2><center>$cards2[top]</td></tr><tr><td>$cards2[left]</td><td>$cards2[right]</td></tr><tr><td colspan=2><center>$cards2[bottom]</td></tr></table></td><td><img src='img/cards/$cards2[img]' height='75' width='75' alt='$cards2[name]' title='$cards2[name]'></img></td><td>$cards2[name]</td><td>$element_array[$element]</td><td>$cards2[level]</td><td>$is2[quantity]</td></tr>";
}
print "</table>";
	
	

?>