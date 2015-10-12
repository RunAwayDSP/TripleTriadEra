<?

function add_cards($charid,$first,$last)
{
require 'config.php';
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

function char_name($id){
require 'config.php';
$char = "SELECT * from chars where charid='$id'"  or die("Error in the consult.." . mysqli_error($db1)); 
$char1 = $db1->query($char) or die("Error " . mysqli_error($db1));
$char2 = mysqli_fetch_array($char1);
if($char2[charid]==$id){

	print "$char2[charname]";
}
}

function matches($status)
{
require 'config.php';
require 'arrays.php';
//Get Matches//
$is = "SELECT * from tt_matches where status='$status' order by ID desc"  or die("Error in the consult.." . mysqli_error($db1)); 
$is1 = $db1->query($is) or die("Error " . mysqli_error($db1));
while($is2 = mysqli_fetch_array($is1)){

print "<tr><td>$is2[ID]</td><td>";
char_name($is2[char1]);
print "</td><td>";
char_name($is2[char2]);
$gain=$is2['gain'];
$rules=$is2['rules'];
$special=$is2['special'];

print "</td><td>$gain_array[$gain]</td><td>";
   $x=$rules;

    $n = 1 ;
    while ( $x > 0 ) {
        if ( $x & 1 == 1 ) {
            echo $rules_array[$n], "<br>" ;
        }
        $n *= 2 ;
        $x >>= 1 ;
    }


print "</td><td>$special_array[$special]</td>";
print "<td></td></tr>";	
}


}

function extract_numbers($string)
{
preg_match_all('/([\d]+)/', $string, $match);
 
return $match[0];
}


?>