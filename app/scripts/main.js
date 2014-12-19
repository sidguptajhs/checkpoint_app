/* jshint devel:true */
jQuery(document).ready(function() {
  "use strict";

  jQuery("[data-js='form-search-stations-submit']").on("click", function(event) {
    event.preventDefault();

    var stationFrom = jQuery("[data-js='form-search-stations-from']").val();
    var stationTo = jQuery("[data-js='form-search-stations-to']").val();

    console.log("Searching for stations between", {
      stationFrom: stationFrom,
      stationTo: stationTo
    });

    var stationSearchPromise = jQuery.ajax({
      url: "data/stations-sample.json",
      method: "get",
      data: {
        stationFrom: stationFrom,
        stationTo: stationTo
      }
    });

    stationSearchPromise.done(function(data) {
      console.log("stationSearchPromise:done", { data: data });
      rivets.bind(jQuery("[data-js='stations-list']"), data);

      jQuery.mobile.navigate("#checkpointapp-page-list");
    });

    stationSearchPromise.fail(function(data) {
      console.log("stationSearchPromise:fail", { data: data });
    });
  });
});
