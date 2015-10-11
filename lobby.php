<h1>Game Lobby</h1>
<?
print "<h3>Awaiting Player</h3><table><tr><td>ID</td><td>Player 1</td><td>Player 2</td></tr>";
matches(1);
print "</table>";
print "<h3>Active Matches</h3><table><tr><td>ID</td><td>Player 1</td><td>Player 2</td></tr>";
matches(2);
print "</table>";
print "<h3>Finished Matches</h3><table><tr><td>ID</td><td>Player 1</td><td>Player 2</td></tr>";
matches(3);
print "</table>";
?>