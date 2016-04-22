$(document).ready(function() {
	console.log("JS is working");

	$cards = $(".cards .container");
	$networking = $(".container.networking");
	$project = $(".container.project");
	$skillShare = $(".container.skill_share");

	$(".btn-filter.btn-networking").click(function(e) {
		e.preventDefault();
		console.log("click!");
		$cards.remove();
		$(".cards").append($networking);
	});

	$(".btn-filter.btn-project").click(function(e) {
		e.preventDefault();
		console.log("click!");
		$cards.remove();
		$(".cards").append($project);
	});

	$(".btn-filter.btn-skill-share").click(function(e) {
		e.preventDefault();
		console.log("click!");
		$cards.remove();
		$(".cards").append($skillShare);
	});

	$(".btn-filter.btn-all").click(function(e) {
		e.preventDefault();
		console.log("click!");
		$cards.remove();
		$(".cards").append($cards);
	});
});