<?php
session_start();
session_unset();
session_destroy();
echo "<script>location.replace('Homepage1.html')</script>";
?>
