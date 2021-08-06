<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="style.css?v=<?php echo time(); ?>">
</head>
<body>

<?php
$conn = new mysqli('localhost','root','','ravi');

if(isset($_POST['upload_files'])){
	
	foreach($_FILES['document']['name'] as $key=>$val){
		// $rand=rand('11111111','99999999');
		// $file=$rand.'_'.$val;
		move_uploaded_file($_FILES['document']['tmp_name'][$key],'upload/'.$val);
		
    $uploads = "INSERT INTO `multiple_file_upload` ( `file_name`, `uploading_time`) VALUES ('$val', CURRENT_TIMESTAMP)";

    $result = mysqli_query($conn, $uploads);

    if($result)
    {
        echo '<script>alert (" Your Files has been upload successfully.");
        </script>';
        // header('location: view_file.php');
    }
    else {
        echo '<script>alert ("Sorry there are some problem Please try again.");
        </script>';
        }
}
	}

?>


    <div class="contanier">
        <div class="form_box">
             <h2 id="title">Multiple file Upload</h2>
        <form action="<?php echo htmlspecialchars($_SERVER['PHP_SELF']) ?>"  method="POST" enctype="multipart/form-data">

        <input type="file" id="upload_input" name="document[]" multiple/>
      
        <input type="submit" name="upload_files" value="Upload File" id="upload_btn">

    </form>
        </div>
    </div>
</body>
</html>