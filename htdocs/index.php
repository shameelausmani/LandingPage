<?php 
if(isset($_POST['submit'])){
    $to = "mycdfit@gmail.com"; // this is your Email address
    $from = "mycdfit@gmail.com"; // this is the sender's Email address
    $first_name = $_POST['first_name'];
    $last_name = $_POST['last_name'];
    $subject = "Form submission";
    $subject2 = "Copy of your form submission";
    $message = $first_name . " " . $last_name . " wrote the following:" . "\n\n" . $_POST['message'];
    $message2 = "Here is a copy of your message " . $first_name . "\n\n" . $_POST['message'];

    $headers = "From:" . $from;
    $headers2 = "From:" . $to;
	$message = mail($to,$subject,$message,$headers);
    echo "<script type='text/javascript'>console.log('$message');</script>";
    mail($from,$subject2,$message2,$headers2); // sends a copy of the message to the sender
    echo  header('Location: thank_you.php');
    }
?>

<!DOCTYPE html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<link rel="stylesheet" href="resources/css/bitnami.css">
<title>Landing Page</title>
</head>
<body>

<div class="container">
<h1>Contact Us</h1>
<div id="nav">
<h4>Feedback Form <br>
<br>shameelausmani@gmail.com

<br>contact no-321-355-0566<br>
Florida</h4>
</div>

<div id="section">

 <form action="" method="post">
    <div class="form-group">
      <label class="control-label col-sm-4" for="yourname">Your Name</label>
      <div class="col-sm-8">
        <input type="text" class="form-control" id="yourname" name="name" placeholder="Enter name">
        </div>
        
    </div>
    <div class="form-group">
      <label class="control-label col-sm-4" for="email">Email:</label>
      <div class="col-sm-8">
        <input type="email" class="form-control" id="email" name="email" placeholder="Enter email">
      </div>
      
    </div>
<div class="form-group">
      <label class="control-label col-sm-4" for="message">Message</label>
      <div class="col-sm-8">
        <textarea class="form-control" rows="5" name="message" placeholder="Enter new Message"></textarea>
        <br>
      </div>
      </div>
     
    
    <div class="form-group">
      <div class="col-sm-offset-8 col-sm-4">
    <input type="submit" name="submit" value="send">
      </div>
    </div>
  </form>
</div>

</div>


 
  
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>

</body>
</html> 