class RoutesController < ApplicationController
  
  def show            
        render json: '{
 "stations": [{
   "name": "London",
   "nlc": "1",
   "coordinates": {
     "latitude": "51.5073510",
     "longitude": "-0.1277580"
   }
 },
 {
   "name": "London Euston Rail Station",
   "nlc": "2",
   "coordinates": {
     "latitude": "51.5290340",
     "longitude": "-0.1346760"
   }
 },
 {
   "name": "Watford Junction Rail Station",
   "nlc": "3",
   "coordinates": {
     "latitude": "51.6637730",
     "longitude": "-0.3968900"
   }
 },
 {
   "name": "Coventry Rail Station",
   "nlc": "4",
   "coordinates": {
     "latitude": "52.4011300",
     "longitude": "-1.5135670"
   }
 },
 {
   "name": "Birmingham New Street Rail Station",
   "nlc": "5",
   "coordinates": {
     "latitude": "52.4083670",
     "longitude": "-1.9635510"
   }
 },
 {
   "name": "Sandwell & Dudley Rail Station",
   "nlc": "6",
   "coordinates": {
     "latitude": "52.5086700",
     "longitude": "-2.0115900"
   }
 },
 {
   "name": "Wolverhampton Rail Station",
   "nlc": "6\7",
   "coordinates": {
     "latitude": "52.5237580",
     "longitude": "-2.0492960"
   }
 },
 {
   "name": "Stafford Rail Station",
   "nlc": "7",
   "coordinates": {
     "latitude": "52.8039050",
     "longitude": "-2.1220170"
   }
 },
 {
   "name": " Stoke-on-Trent Rail Station",
   "nlc": "9",
   "coordinates": {
     "latitude": "53.0869600",
     "longitude": "-2.2432950"
   }
 },
 {
   "name": "Macclesfield Rail Station",
   "nlc": "10",
   "coordinates": {
     "latitude": "52.2593310",
     "longitude": "-2.1222040"
   }
 },
 {
   "name": "Stockport Rail Station",
   "nlc": "11",
   "coordinates": {
     "latitude": "53.4058860",
     "longitude": "-2.1629980"
   }
 },
 {
   "name": "Manchester Piccadilly Rail Station",
   "nlc": "12",
   "coordinates": {
     "latitude": "53.4777790",
     "longitude": "-2.2319190"
   }
 }
 ]
}
'
  end

end