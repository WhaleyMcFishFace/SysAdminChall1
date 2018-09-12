<?php

include_once('start.php');

try
{
    $result = $db->query("Select count(id) from questions");
    $result = $result->fetch();
    $length = $result["count(id)"];
}
catch (PDOException $e)
{
    trigger_error($e->getMessage(), E_USER_ERROR);
    return false;
}

$output = '
<html>
<head>
<script src="//code.jquery.com/jquery-1.12.0.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js" integrity="sha384-0mSbJDEHialfmuBBQP6A4Qrprq5OVfW37PRR3j5ELqxss1yVqOtnepnHVP9aJ7xS" crossorigin="anonymous"></script>
<script src="./js/survey.js"></script>
<script>var total='.$length.'; </script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7" crossorigin="anonymous">
</head>
<title>Survey!</title>
<body>
  <div class="container">
    <h1>This hurvey has '.$length.' questions! Great Success!</h1>
  </div>
</body>
</html>
';
echo $output;
