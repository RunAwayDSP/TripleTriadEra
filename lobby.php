<h1>Game Lobby</h1>
<?

if($_POST['create']){
$mode=(int)$_POST['mode'];
$special=(int)$_POST['special'];
$random=(int)$_POST['random'];
$open=(int)$_POST['open'];
$same=(int)$_POST['same'];
$plus=(int)$_POST['plus'];
$elemental=(int)$_POST['elemental'];
$combo=(int)$_POST['combo'];
$wall=(int)$_POST['wall'];
$deathmatch=(int)$_POST['deathmatch'];
$rules=$random+$open+$same+$plus+$elemental+$combo+$wall+$deathmatch;
$hascards=0;
$cards=0;
$cardid=0;
if($rules==0){

print "<b>You did not select any rules!</b>";
	
}else{

//every card//
for ($i = 1; $i <= 115; $i++) {
if($_POST[$i]==0 || !$_POST[$i]){
}
else{
//verify has cards//
$is = "SELECT * from tt_char_cards where charid='$charid' and cardid='$i'"  or die("Error in the consult.." . mysqli_error($db1)); 
$is1 = $db1->query($is) or die("Error " . mysqli_error($db1));
$is2 = mysqli_fetch_array($is1);
if(!$is2){
	
}else{
if($is2['quantity']<$_POST[$i]){
$hascards=1;
}
}
$cards=$cards+$_POST[$i];
for ($l = 1; $l <= $_POST[$i]; $l++)
$cardid=$i . ',' . $cardid;
}
}
if($cards!=5 && $random==0){
print "<b>You must select exactly 5 cards!</b>";
}
elseif($hascards==1){
print "<b>You selected more cards than you have</b>";
}else{
if($random>0){
//todo random deck//
	
}else{
$numbers_array = extract_numbers($cardid);
$card1=$numbers_array[0];
$card2=$numbers_array[1];
$card3=$numbers_array[2];
$card4=$numbers_array[3];
$card5=$numbers_array[4];

$query = "INSERT INTO tt_matches (char1,gain,rules,special,card1,card2,card3,card4,card5,status) VALUES ('$charid','$mode','$rules','$special','$card1','$card2','$card3','$card4','$card5','1')" or die("Error in the consult.." . mysqli_error($db1));
$result = $db1->query($query) or die("Error " . mysqli_error($db1));
}
}

}
}

print "<br><a href='?d=lobby'>Home</a> -- <a href='?d=create'>Create Match</a> -- <a href='?d=active'>Active Matches</a> -- <a href='?d=finished'>Finished Matches</a>";
print "<table width=90%><tr><th colspan=7><h3>Awaiting Player</h3></th></tr><tr><td>ID</td><td>Player 1</td><td>Player 2</td><td>Gain Mode</td><td>Rules</td><td>Special Rules</td><td>Join</td></tr>";
matches(1);
print "</table>";
?>