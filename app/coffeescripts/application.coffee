$jq ->
	$jq("#toggle_advanced_fields").toggle ->
		$jq(".advanced_fields").show()
		$jq(".week_fields").hide()
		false

	, ->
		$jq(".advanced_fields").hide()
		$jq(".week_fields").show()
		false
	
	$jq("#opening_hour_weekday_4i").change ->
		$jq(".opening_hour_weekday").val($jq(this).val())
		
	$jq("#opening_hour_weekday_5i").change ->
		$jq(".opening_hour_weekday").next().val($jq(this).val())
		
	$jq("#opening_hour_weekend_4i").change ->
		$jq(".opening_hour_weekend").val($jq(this).val())

	$jq("#opening_hour_weekend_5i").change ->
		$jq(".opening_hour_weekend").next().val($jq(this).val())
		
	$jq("#closing_hour_weekday_4i").change ->
		$jq(".closing_hour_weekday").val($jq(this).val())

	$jq("#closing_hour_weekday_5i").change ->
		$jq(".closing_hour_weekday").next().val($jq(this).val())

	$jq("#closing_hour_weekend_4i").change ->
		$jq(".closing_hour_weekend").val($jq(this).val())

	$jq("#closing_hour_weekend_5i").change ->
		$jq(".closing_hour_weekend").next().val($jq(this).val())