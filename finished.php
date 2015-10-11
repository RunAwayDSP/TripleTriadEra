<h1>Finished Matches</h1>
<?
print "<a href='?d=lobby'>Home</a> -- <a href='?d=create'>Create Match</a> -- <a href='?d=active'>Active Matches</a> -- <a href='?d=finished'>Finished Matches</a>";
print "<table width=90%><tr><th colspan=7><h3>Finished Matches</h3></th></tr><tr><td>ID</td><td>Player 1</td><td>Player 2</td><td>Gain Mode</td><td>Rules</td><td>Special Rules</td><td>Result</td></tr>";
matches(3);
print "</table>";
?>