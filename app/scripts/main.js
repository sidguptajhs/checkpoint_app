/* jshint devel:true */
jQuery(document).ready(function() {
  "use strict";

  var currentLocationBoundView = rivets.bind(jQuery("[data-js='currentLocation']"), {
    coords: {
      latitude: "0",
      longitude: "0"
    }
  });
  var stationsListBoundView = null;

  var geolocationWatcherSuccess = function(position) {
    console.log("Got position", { position: position });

    currentLocationBoundView.update(position);
  };

  var geolocationWatcherError = function(error) {
    console.log("Error", { error: error });
  };

  jQuery("[data-js='form-search-stations-submit']").on("click", function(event) {
    event.preventDefault();

    var stationFrom = jQuery("[data-js='form-search-stations-from']").val();
    var stationTo = jQuery("[data-js='form-search-stations-to']").val();

    console.log("Searching for stations between", {
      stationFrom: stationFrom,
      stationTo: stationTo
    });

    var stationSearchPromise = jQuery.ajax({
      url: "http://checkpointapp.cloudapp.net/routes/1",
      method: "get",
      data: {
        stationFrom: stationFrom,
        stationTo: stationTo
      }
    });

    stationSearchPromise.done(function(data) {
      console.log("stationSearchPromise:done", { data: data });
      stationsListBoundView = rivets.bind(jQuery("[data-js='stations-list']"), data);
      jQuery.mobile.navigate("#checkpointapp-page-list");

      var geolocationWatcher = null;

      if(Modernizr.geolocation) {
        geolocationWatcher = window.navigator.geolocation.watchPosition(geolocationWatcherSuccess, geolocationWatcherError, {
          enableHighAccuracy: true,
          timeout: 120000,
          maximumAge: 0
        });
      }
    });

    stationSearchPromise.fail(function(data) {
      console.log("stationSearchPromise:fail", { data: data });
    });
  });
});
