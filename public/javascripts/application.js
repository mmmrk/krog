(function() {
  $jq(function() {
    $jq("#toggle_advanced_fields").toggle(function() {
      $jq(".advanced_fields").show();
      $jq(".week_fields").hide();
      return false;
    }, function() {
      $jq(".advanced_fields").hide();
      $jq(".week_fields").show();
      return false;
    });
    $jq("#opening_hour_weekday_4i").change(function() {
      return $jq(".opening_hour_weekday").val($jq(this).val());
    });
    $jq("#opening_hour_weekday_5i").change(function() {
      return $jq(".opening_hour_weekday").next().val($jq(this).val());
    });
    $jq("#opening_hour_weekend_4i").change(function() {
      return $jq(".opening_hour_weekend").val($jq(this).val());
    });
    $jq("#opening_hour_weekend_5i").change(function() {
      return $jq(".opening_hour_weekend").next().val($jq(this).val());
    });
    $jq("#closing_hour_weekday_4i").change(function() {
      return $jq(".closing_hour_weekday").val($jq(this).val());
    });
    $jq("#closing_hour_weekday_5i").change(function() {
      return $jq(".closing_hour_weekday").next().val($jq(this).val());
    });
    $jq("#closing_hour_weekend_4i").change(function() {
      return $jq(".closing_hour_weekend").val($jq(this).val());
    });
    return $jq("#closing_hour_weekend_5i").change(function() {
      return $jq(".closing_hour_weekend").next().val($jq(this).val());
    });
  });
})();