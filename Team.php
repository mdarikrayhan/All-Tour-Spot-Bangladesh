<?php
$page_title = "Team Members";
$menu = "team";
include("header.php");
$team = new Team();
$Member1 = new Member(20104015,"Md. Moneruzjaman Mone","01780873393","CSE","11th","Night","1",["facebook"=> "https://www.facebook.com/moni.moniruzzjamanmoni"] , "images/mone.jpg");
$Member2 = new Member(20104027,"Gourob Roy","01799833436","CSE","11th","Day","1",["facebook"=> "https://www.facebook.com/gourobroy.chamok.1"] , "images/gourob.jpg");
$Member3 = new Member(20104031,"Bilkis Khatun","01787609671","CSE","11th","Day","1",["facebook"=> "https://www.facebook.com/edon.15"] , "images/bilkis.jpg");
$Member4 = new Member(20104033,"Md Arik Rayhan","01780873393","CSE","11th","Day","1",["facebook"=> "https://www.facebook.com/md4rikrayhan"] , "images/arik.jpg");
$team->addMember($Member1);
$team->addMember($Member2);
$team->addMember($Member3);
$team->addMember($Member4);
?>
<section class="banner-w3layouts-bottom py-lg-5 py-3">
		<div class="container py-lg-4 py-3">
			<div class="row">
				<?php foreach ($team->getMemeber() as $keyMember => $valueMember) {
				?>
				<div class="col-lg-3 customer-main">
					<div class="card rs_members">
						<div class="card-body">
							<div class="customer-img">
								<img src="<?php echo $valueMember->picture; ?>" alt=" " class="img-fluid rounded">
							</div>
							<div class="customer-info text-left py-lg-4 py-2">
								<h4><?php echo $valueMember->name; ?></h4>
								<h6>
									<span>Id:</span> <?php echo $valueMember->id; ?></br>
									<span>Intake:</span> <?php echo $valueMember->intake; ?></br>
									<span>Department:</span> <?php echo $valueMember->department; ?></br>
									<span>Shift:</span> <?php echo $valueMember->shift; ?></br>
									<span>Mobile:</span> <?php echo $valueMember->mobile; ?>
								</h6>
								<div class="row  pt-3 mt-3 team-social border-top">
									<ul class="col-md-12 d-flex justify-content-center social-icons">
										<li>
											<a href="<?php echo $valueMember->social['facebook']; ?>">
												<i class="fab fa-facebook-f"></i>
											</a>
										</li>
										<li class="mx-3">
											<a href="<?php echo $valueMember->social['twitter']; ?>">
												<i class="fab fa-twitter"></i>
											</a>
										</li>
										<li>
											<a href="<?php echo $valueMember->social['googleplus']; ?>">
												<i class="fab fa-google-plus-g"></i>
											</a>
										</li>
									</ul>
								</div>
							</div>
						</div>
					</div>
				</div>
				<?php
					} 
				?>
			</div>
		</div>
	</section>
<?php
	include("footer.php");
?>