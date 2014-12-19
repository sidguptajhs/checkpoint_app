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
  var allStations = {
    stations: []
  };
  var fakeLocations = [{
    latitude: 1,
    longitude: 1
  }, {
    latitude: 2,
    longitude: 2
  }, {
    latitude: 3,
    longitude: 3
  }, {
    latitude: 4,
    longitude: 4
  }];
  var fakeLocationIndex = 0;

  var geolocationWatcherSuccess = function(position) {
    console.log("Got position", { position: position });

    fakeLocationsIndex++;

    position.coords.latitude = fakeLocations[fakeLocationsIndex].latitude;
    position.coords.longitude = fakeLocations[fakeLocationsIndex].longitude;

    var location = getResult(position.coords.latitude, position.coords.longitude, allStations.stations);

    if(location === -1 || fakeLocationsIndex >= fakeLocations.length) {
      location=allStations.stations.length;
    }

    for(var i = 0; i<location; i++) {
      allStations.stations[i].isArrived = true;
    }

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
      allStations.stations = data.stations;
      stationsListBoundView = rivets.bind(jQuery("[data-js='stations-list']"), allStations);
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
