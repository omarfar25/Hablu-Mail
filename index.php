<?php $title="inbox"; ?>
<?php require_once('includes/config.php'); ?>
<?php require_once('header.php'); ?>
<?php require_once('left-side.php'); ?>
<?php define('MEMBER_ID', $_SESSION['memberID']);
 ?>
	<div class="h3">Inbox</div>
	<?php foreach ($db->query("SELECT * FROM mail WHERE reciver_id =".MEMBER_ID) as $row){?>
				<?php $s_id = $row['sender_id']; ?>
				<a href="single.php?mail_id=1" class="msg">
					<span class="sender"><?php  $row_sn = $user->get_sender_name_from_id($s_id); echo $sender_name = $row_sn['username']; ?></span>
					<span class="subject"><?php echo $row['mail_subject']; ?> </span>
					<span class="close"><?php echo $row['mail_date']." / ".$row['mail_time']; ?></span>
				</a>
	<?php } ?>
<?php require_once('footer.php'); ?>
