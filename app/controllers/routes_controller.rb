class RoutesController < ApplicationController

  def show
    response.headers['Access-Control-Allow-Origin'] = '*'
    render json: '{
 "stations": [{
   "name": "London",
   "nlc": "100",
   "isArrived": false,
   "coordinates": {
     "latitude": "1",
     "longitude": "1"
   }
 },
 {
   "name": "Old Oak",
   "nlc": "20000",
   "isArrived": false,
   "coordinates": {
     "latitude": "2",
     "longitude": "2"
   }
 },
 {
   "name": "Birmingham",
   "nlc": "300",
   "isArrived": false,
   "coordinates": {
     "latitude": "3",
     "longitude": "3"
   }
 },
 {
   "name": "Manchester",
   "nlc": "400",
   "isArrived": false,
   "coordinates": {
     "latitude": "4",
     "longitude": "4"
   }
 }]
}'
  end

end
