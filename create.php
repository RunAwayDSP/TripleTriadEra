<h1>Create Match</h1>
<?
print "<a href='?d=lobby'>Home</a> -- <a href='?d=create'>Create Match</a> -- <a href='?d=active'>Active Matches</a> -- <a href='?d=finished'>Finished Matches</a><br><br>";

print "<form action='?d=lobby' method='post'>Gain Mode:<select name='mode'>
<option value='0'>No Gain</option>
<option value='1'>One</option>
<option value='2'>Direct</option>
<option value='3'>Change</option>
<option value='4'>Total</option>
</select><br>";
print "Rules:
<input type='checkbox' name='random' value='1' />Random Deck
<input type='checkbox' name='open' value='2' />Open
<input type='checkbox' name='same' value='4' />Same
<input type='checkbox' name='plus' value='8' />Plus
<input type='checkbox' name='elemental' value='16' />Elemental
<input type='checkbox' name='combo' value='32' />Combo
<input type='checkbox' name='wall' value='64' />Same Wall
<input type='checkbox' name='deathmatch' value='128' />Deathmatch
<br>";
print "Special Rules:<select name='special'>
<option value='0'>None</option>
</select><br>";
print "Select Cards (Ignore If Random Deck):";

print "<table width=55% border=1><tr><td>Pick 5</td><td>Ranks</td><td>Card</td><td>Name</td><td>Element</td><td>Level</td><td>Quantity</td></tr>";
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
print "<tr><td><input type='text' name='$cards2[ID]' value='0' size='1' /></td><td><table><tr><td colspan=2><center>$cards2[top]</td></tr><tr><td>$cards2[left]</td><td>$cards2[right]</td></tr><tr><td colspan=2><center>$cards2[bottom]</td></tr></table></td><td><img src='img/cards/$cards2[img]' height='75' width='75' alt='$cards2[name]' title='$cards2[name]'></img></td><td>$cards2[name]</td><td>$element_array[$element]</td><td>$cards2[level]</td><td>$is2[quantity]</td></tr>";
}
print "</table><input type='submit' name='create' value='Create Match'></input></form>";

?>