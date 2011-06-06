class EstablishmentsController extends ApplicationController
	init_events: ->
		$("#toggle_advanced_fields").toggle ->
	  		$(".advanced_fields").show()
	  		$(".week_fields").hide()
	  		false

	  	, ->
	  		$(".advanced_fields").hide()
	  		$(".week_fields").show()
	  		false

		init_hour_events "opening_hour_weekday", "opening_hour_weekend", "closing_hour_weekday", "closing_hour_weekend"
		#init_hour_events "closing_hour_weekday"

	init_hour_events = (names...) ->
		for name in names
			$("##{name}_4i").change ->
				$(".#{name}").val($(this).val())

			$("##{name}_5i").change ->
				console.log 2
				$(".#{name}").next().val($(this).val())

$ -> (new EstablishmentsController).init_events()