class RoutesController < ApplicationController

  def show
    response.headers['Access-Control-Allow-Origin'] = '*'
    render json: '{
 "stations": [{
   "name": "London",
   "nlc": "100",
   "isArrived": false,
   "coordinates": {
     "latitude": "12.9287304",
     "longitude": "77.6289364"
   }
 },
 {
   "name": "Old Oak",
   "nlc": "20000",
   "isArrived": false,
   "coordinates": {
     "latitude": "12.928588",
     "longitude": "77.628955"
   }
 },
 {
   "name": "Birmingham",
   "nlc": "300",
   "isArrived": false,
   "coordinates": {
     "latitude": "12.92845783",
     "longitude": "77.62893352"
   }
 },
 {
   "name": "Manchester",
   "nlc": "400",
   "isArrived": false,
   "coordinates": {
     "latitude": "12.928716",
     "longitude": "77.6289"
   }
 }]
}'
  end

end
