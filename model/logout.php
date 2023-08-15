<?php

session_start();

session_destroy();

echo "<script>window.open('../controller/index.php','_self')</script>";


?>