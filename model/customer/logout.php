<?php

session_start();

session_destroy();

echo "<script>window.open('http://localhost/CSE470/controller/','_self')</script>";


?>