<div class="bravo_subscribe">
	<div class="container">
		<div class="row">
			<div class="col-md-4">
				<h1 class="text-heading">Subscribe now</h1>
				<div class="sub-heading">Lorem Ipsum is simply dummy text of the printing and typesetting industry.
					<br/>
					Lorem Ipsum has been the industry's since the 1500s</div>
				<div class="g-form-control">
					<form action="{{route('newsletter.subscribe')}}" class="form subcribe-form bravo-subscribe-form bravo-form">
						<div class="g-field-search">
							<i class="fa fa-envelope input-icon"></i>							
							<input type="text" class="form-control subscribe_text" placeholder="Email Address" name="email" required>
							<button class="btn btn-search btn-subscribe">
								Submit<i class="fa fa-spinner fa-pulse fa-fw"></i>
							</button>
						</div>
						<div class="form-mess"></div>
					</form>                
				</div>
			</div>
			<div class="col-md-8 subscribe_thumb_image" style="background-image:url('/images/home.svg') !important; background-size:cover"></div>
		</div>
	</div>
</div>