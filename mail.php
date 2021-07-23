<!DOCTYPE html>
<html>

    <title> Correo </title>
    
<body>

    <center>
<?php
/*
if(isset( $_POST['name']))
$name = $_POST['name'];
if(isset( $_POST['email']))
$email = $_POST['email'];
if(isset( $_POST['message']))
$message = $_POST['message'];
if(isset( $_POST['subject']))
$subject = $_POST['subject'];
if ($name === ''){
echo "Se requiere de un nombre.";
die();
}
if ($email === ''){
echo "Se requiere de un correo electrónico.";
die();
} else {
if (!filter_var($email, FILTER_VALIDATE_EMAIL)){
echo "Correo electrónico inválido.";
die();
}
}
if ($subject === ''){
echo "Se requiere introducir su asunto.";
die();
}
if ($message === ''){
echo "Se requiere introducir un mensaje.";
die();
}
$content="From: $name \nEmail: $email \nMessage: $message";
$recipient = "quocanhlv2@gmail.com";
$mailheader = "From: $email \r\n";
mail($recipient, $subject, $content, $mailheader) or die("Error!");
echo "Enviado con éxito!";
*/

$conn = mysqli_connect("localhost", "root", "root", "mythtales");
    
    if($conn === false) {
        die("Error: no conectó". mysqli_connect_error());
    }
    
    $name = $_REQUEST['name'];
    $email = $_REQUEST['email'];
    $subject = $_REQUEST['subject'];
    $message = $_REQUEST['message'];
    
    if ($name === ''){
        echo "Se requiere de un nombre.";
        die();
    }
        if ($email === ''){
            echo "Se requiere de un correo electrónico.";
            die();
        } else {
            if (!filter_var($email, FILTER_VALIDATE_EMAIL)){
                echo "Correo electrónico inválido.";
                die();
            }
        }
        if ($subject === ''){
            echo "Se requiere introducir su asunto.";
            die();
        }
        if ($message === ''){
            echo "Se requiere introducir un mensaje.";
            die();
        }
    
    $sql = "INSERT INTO players VALUES ('$name', '$email', '$subject', '$message')";
    
    if(mysqli_query($conn, $sql)) {
        echo "<h1>Formulario Enviado<h1>";
    }
    else{
        echo "<h1>Error, intentalo otra vez<h1>". mysqli_error($conn);
    }
    
    
    mysqli_close($conn);
    
    
    
    
    

?>
</center>
    </body>
    </html>