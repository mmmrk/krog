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

		init_hour_events()

	init_hour_events = (names...) ->
		$("#opening_hour_weekday_4i").change -> $(".opening_hour_weekday").val($(this).val())
		$("#opening_hour_weekend_4i").change -> $(".opening_hour_weekend").val($(this).val())
		$("#closing_hour_weekday_4i").change -> $(".closing_hour_weekday").val($(this).val())
		$("#closing_hour_weekend_4i").change -> $(".closing_hour_weekend").val($(this).val())

		$("#opening_hour_weekday_5i").change -> $(".opening_hour_weekday").next().val($(this).val())
		$("#opening_hour_weekend_5i").change -> $(".opening_hour_weekend").next().val($(this).val())
		$("#closing_hour_weekday_5i").change -> $(".closing_hour_weekday").next().val($(this).val())
		$("#closing_hour_weekend_5i").change -> $(".closing_hour_weekend").next().val($(this).val())

$ -> (new EstablishmentsController).init_events()