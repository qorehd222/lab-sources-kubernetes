<?php

print("Hello This is CLI PHP program for kubernetes Training")
echo 'User IP Address is -'.$_SERVER['HTTP_CLIENT_IP'];
echo 'Proxy IP Address is -'.$_SERVER['HTTP_X_FORWARDED_FOR'];
echo 'Remote IP Address is -'.$_SERVER['REMOTE_ADDR']
?>