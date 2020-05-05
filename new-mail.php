<?php require_once('header.php'); ?>
<?php require_once('left-side.php'); ?>

<?php if (isset($_POST['send'])) {
    $to = $_POST['mail_to'];
    $subject = $_POST['mail_subject'];
    $mail_body = $_POST['mail_body'];

    $sta = hablu_check_mail_valid($db, $to);
    if ($sta == true) {
      //get reciver id from DB
        $reciver_id =hablu_check_reciver_id($db, $to);
        $sta = hablu_create_new_nail($db,$to, $subject ,$mail_body, $reciver_id);
        if ($sta == true) {
          $msg = '<div class="alert alert-success">Mail Send Successfull!</div>';
          
        }else{
           $msg = '<div class="alert alert-danger">Faild! plsease Try Again.</div>';
        }
    }else{
      $msg = '<div class="alert alert-danger">Invalid Mail Adddress. Please Check mail Address.</div>';
      $mail_invalid="yes";
    }

} ?>


<!-- your code here -->
<div class="h3 border-bottom">Send New Mail</div>
<div class="row">
  <div class="col">
    <?php if (isset($msg)) {
      echo $msg;
    } ?>
  </div>
</div>
<form action="" method="post">
  <div class="form-group">
    <label for="">To</label>
    <input type="email" class="form-control " name="mail_to" id="" placeholder="name@hablumail.com" required <?php if(isset($mail_invalid)){ echo 'style=" border:1px solid #f00;"';} ?> >
  </div>
  <div class="form-group">
    <label for="">Subject</label>
    <input type="text" class="form-control" name="mail_subject" id="" placeholder="" required>
  </div>

  <div class="form-group">
    <label for="">Body</label>
    <textarea class="form-control" name="mail_body" id="" rows="3" required></textarea>
  </div>
    <div class="row">
    	<div class="col-6">
    		<button type="submit" class="btn btn-primary mb-2" name="save">Save to Draft</button>
    	</div>
    	<div class="col-6 text-right">
    		<button type="submit" class="btn btn-success mb-2" name="send">Send Mail</button>
    	</div>
    </div>

</form>
			
<?php require_once('footer.php'); ?>
			