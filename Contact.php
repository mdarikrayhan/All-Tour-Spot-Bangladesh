<?php
$page_title = "Contact Us";
$menu = "contact";
	include("header.php");
$contactEmail = "mdarikrayhan@gmail.com";
$messageConfirm = "";
if(isset($_POST['send_email'])){
	$subject = "Tourist Message";
	$messageBody = "";
	$headers = "From: info@digitalbd.net";
	$messageBody .= "\n Name: ".$_POST['name'];
	$messageBody .= "\n Email: ".$_POST['email'];
	$messageBody .= "\n Subject: ".$_POST['subject'];
	$messageBody .= "\n message: ".$_POST['message'];
	if(mail($contactEmail,$subject,$messageBody,$headers)){
		$messageConfirm = "Message Sent";
	}else{
		$messageConfirm = "Email can't sent.";
	}
	
}
?>
<section class="banner-rs-bottom py-lg-5 py-3">
	
	<div class="container py-lg-4 py-3">
			<div class="address row">

				<div class="col-lg-4 address-grid">
					<div class="row address-info">
						<div class="col-md-3 address-left text-center">
							<i class="far fa-map"></i>
						</div>
						<div class="col-md-9 address-right text-left">
							<h6>Address</h6>
							<p> BAUET,Natore.

							</p>
						</div>
					</div>

				</div>
				<div class="col-lg-4 address-grid">
					<div class="row address-info">
						<div class="col-md-3 address-left text-center">
							<i class="far fa-envelope"></i>
						</div>
						<div class="col-md-9 address-right text-left">
							<h6>Email</h6>
							<p>
								<a href="mailto:example@email.com"> mdarikrayhan@gmail.com</a>

							</p>
						</div>

					</div>
				</div>
				<div class="col-lg-4 address-grid">
					<div class="row address-info">
						<div class="col-md-3 address-left text-center">
							<i class="fas fa-mobile-alt"></i>
						</div>
						<div class="col-md-9 address-right text-left">
							<h6>Phone</h6>
							<p>+8801780873393</p>

						</div>

					</div>
				</div>
			</div>
		<div class="contact_grid_right">
			<form action="" method="post">
				<?php
					if(!empty($messageConfirm)){
						echo '<p class="alert alert-info">'.$messageConfirm.'</p>';
					}
				?>
				<div class="row contact_left_grid">
					<div class="col-md-6 con-left">
						<div class="form-group">
							<label class="my-2">Name</label>
							<input class="form-control" type="text" name="name" placeholder="" required="">
						</div>
						<div class="form-group">
							<label>Email</label>
							<input class="form-control" type="email" name="email" placeholder="" required="">
						</div>
						<div class="form-group">
							<label class="my-2">Subject</label>
							<input class="form-control" type="text" name="subject" placeholder="" required="">
						</div>
					</div>
					<div class="col-md-6 con-right">
						<div class="form-group">
							<label>Message</label>
							<textarea id="textarea" placeholder="" name="message" required=""></textarea>
						</div>
						<input class="form-control" name="send_email" type="submit" value="Submit">

					</div>
				</div>
			</form>
		</div>
	</div>
</section>
<section class="contact-map">
<iframe src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d14546.49830082091!2d89.0090976!3d24.2898401!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0xfc1a32911db39651!2sBangladesh%20Army%20University%20of%20Engineering%20and%20Technology!5e0!3m2!1sen!2sbd!4v1666450346219!5m2!1sen!2sbd" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
</section>
<?php
	include("footer.php");
?>