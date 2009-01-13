<?php

echo "<pre>";

$var1 = "Testing";
$var2 = array('one' => 'Item 1', 'two' => 'Item 2');
$var3 = "This is a multiline string " .
        "declared with a concat.";

// Standard echo-formatting
echo "Var1        : $var1\n";
echo "Var2 ['one']: $var2[one]\n";
echo "Var3        : $var3\n";

echo "</pre>";
?>
