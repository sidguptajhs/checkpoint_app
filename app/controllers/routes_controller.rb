class RoutesController < ApplicationController

  def show
    response.headers['Access-Control-Allow-Origin'] = '*'
    render json: '{
 "stations": [{
   "name": "London",
   "nlc": "100",
   "isArrivedTheme": "a",
   "coordinates": {
     "latitude": "51.5073510",
     "longitude": "-0.1277580"
   }
 },
 {
   "name": "London Euston Rail Station",
   "nlc": "20000",
   "isArrivedTheme": "b",
   "coordinates": {
     "latitude": "51.5290340", // Curr LAt 51.6224234, 61.6224234
     "longitude": "-0.1346760"
   }
 },
 {
   "name": "Watford Junction Rail Station",
   "nlc": "300",
   "isArrivedTheme": "a",
   "coordinates": {
     "latitude": "51.6637730",
     "longitude": "-0.3968900"
   }
 },
 {
   "name": "Coventry Rail Station",
   "nlc": "400",
   "isArrivedTheme": "a",
   "coordinates": {
     "latitude": "52.4011300",
     "longitude": "-1.5135670"
   }
 },
 {
   "name": "Birmingham New Street Rail Station",
   "nlc": "500",
   "isArrivedTheme": "a",
   "coordinates": {
     "latitude": "52.4083670",
     "longitude": "-1.9635510"
   }
 },
 {
   "name": "Sandwell & Dudley Rail Station",
   "nlc": "600",
   "isArrivedTheme": "a",
   "coordinates": {
     "latitude": "52.5086700",
     "longitude": "-2.0115900"
   }
 },
 {
   "name": "Wolverhampton Rail Station",
   "nlc": "700",
   "isArrivedTheme": "b",
   "coordinates": {
     "latitude": "52.5237580",
     "longitude": "-2.0492960"
   }
 },
 {
   "name": "Stafford Rail Station",
   "nlc": "800",
   "isArrivedTheme": "a",
   "coordinates": {
     "latitude": "52.8039050",
     "longitude": "-2.1220170"
   }
 },
 {
   "name": " Stoke-on-Trent Rail Station",
   "nlc": "900",
   "isArrivedTheme": "a",
   "coordinates": {
     "latitude": "53.0869600",
     "longitude": "-2.2432950"
   }
 },
 {
   "name": "Macclesfield Rail Station",
   "nlc": "1000",
   "isArrivedTheme": "a",
   "coordinates": {
     "latitude": "52.2593310",
     "longitude": "-2.1222040"
   }
 },
 {
   "name": "Stockport Rail Station",
   "nlc": "1100",
   "isArrivedTheme": "a",
   "coordinates": {
     "latitude": "53.4058860",
     "longitude": "-2.1629980"
   }
 },
 {
   "name": "Manchester Piccadilly Rail Station",
   "nlc": "1200",
   "isArrivedTheme": "a",
   "coordinates": {
     "latitude": "53.4777790",
     "longitude": "-2.2319190"
   }
 }]
}'
  end

end
