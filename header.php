<?php require_once('includes/config.php'); ?>
<?php require 'includes/functions.php'; ?>

<!DOCTYPE html>
<html>
<head>
	<title><?php if (isset($title)) {echo $title;} ?></title>
	<link rel="stylesheet" type="text/css" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="assets/css/style.css">

</head>
<body>
 <?php if( !$user->is_logged_in() ){ header('Location: login.php'); exit(); } ?>
	<div class="container border-bottom header">
		<div class="row">
			<div class="col-4 h3">HabluMail</div>
			<div class="col-4 h3"></div>
			<div class="col-4 h3 text-right">
				<a href="profile.php"> <?php $uaer_data=$user->get_profile_info(); echo $uaer_data['email']?> 

				<?php 
                    $profile_pic_url = hablu_check_profile_pic($db); 

                    if(strlen($profile_pic_url)<1){?>
                        <img class="header_profile_default_avt" src="assets/images/user_profile.jpg" alt="">
                    <?php }else{?>
                    	<img class="header_profile_default_avt" src="assets/images/user_profile_pic/<?php echo $profile_pic_url; ?>" alt="">
                    <?php } ?>

				
				</a>
			</div>
		</div>
	</div>
