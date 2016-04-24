function renderCards() {
	$cards = $(".cards .container");
	$networking = $(".container.networking");
	$project = $(".container.project");
	$skillShare = $(".container.skill_share");

	$(".btn-filter.btn-networking").click(function(e) {
		e.preventDefault();
		$cards.remove();
		$(".cards").append($networking);
		$(".btn-filter").removeClass("active");
		$(this).addClass("active");
	});

	$(".btn-filter.btn-project").click(function(e) {
		e.preventDefault();
		$cards.remove();
		$(".cards").append($project);
		$(".btn-filter").removeClass("active");
		$(this).addClass("active");
	});

	$(".btn-filter.btn-skill-share").click(function(e) {
		e.preventDefault();
		$cards.remove();
		$(".cards").append($skillShare);
		$(".btn-filter").removeClass("active");
		$(this).addClass("active");
	});

	$(".btn-filter.btn-all").click(function(e) {
		e.preventDefault();
		$cards.remove();
		$(".cards").append($cards);
		$(".btn-filter").removeClass("active");
		$(this).addClass("active");
	});
}

function assignActiveClass() {
	console.log("click");
	$(".btn-filter").removeClass("active");
	$(this).addClass("active");
	console.log($(this));
}


$(document).on('page:load', renderCards);

$(document).ready(renderCards);