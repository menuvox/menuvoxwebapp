<?php
$pageTitle = "Home";
require_once '_header.php';
?>

<h1 tabindex="0">MenuVox</h1>

<p tabindex="0" class="contain-to-width margin-auto"><b>Your Location:</b> <span id="index-user-geocode-label"></span></p>

<div class="contain-to-width margin-auto" id="index-alert-div"></div>

<div id="modal-div" class="display-none">
	<p tabindex="0" class="contain-to-width margin-auto" id="modal-description"></p>
	<div class="row no-gutters index-yes-no-row">
		<div class="col-6" style="padding-right: 10px;">
			<button class="btn btn-lg btn-outline-light" id="index-yes-button" type="button" name="Yes">Yes</button>
		</div>
		<div class="col-6" style="padding-left: 10px;">
			<button class="btn btn-lg btn-outline-light" id="index-no-button" type="button" name="Yes">No</button>
		</div>
	</div>
</div>

<div id="google-places-service"></div><!-- Object for google places to target and get nearby places -->

<div class="row no-gutters" id="index-reset-tracking-div">
	<div class="col-12">
		<button class="btn btn-lg btn-outline-light" id="index-reset-button" type="button" name="Yes" onclick="window.location.reload()">Reset Location</button>
	</div>
	<div class="col-12">
	<button class="btn btn-lg btn-outline-light" onclick="stop_watch_user_location()" id="index-stop-tracking-button">Stop Location Tracking</button>
	</div>
</div>

<p tabindex="0" id="index-tracking-p"></p>

<?php
require_once '_footer.php';
?>

<script type="text/javascript">
$(document).ready(function() {
	// start tracking user location
	watch_user_location();
});
</script>
