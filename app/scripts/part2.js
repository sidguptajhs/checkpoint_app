function getDistance(current_station,stations){
	var x1,x2,y1,y2,i,current_station;
	var distances = new Array(stations.length);
	for(i=0;i<stations.length;i++)
	{
		x1=parseFloat(stations[i].coordinates.latitude);
		y1=parseFloat(stations[i].coordinates.longitude);
		x2=parseFloat(current_station.coordinates.latitude);
		y2=parseFloat(current_station.coordinates.longitude);
		distances[i]=((y2-y1)*(y2-y1))+((x2-x1)*(x2-x1));
	}
	return distances;
}