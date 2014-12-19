function getAllDistances(currentX,currentY,stations){
	var x1,x2,y1,y2,i,current_station;
	var distances = new Array(stations.length);
	for(i=0;i<stations.length;i++)
	{
		x1=parseFloat(currentX);
		y1=parseFloat(currentY);
		x2=parseFloat(stations[i].coordinates.latitude);
		y2=parseFloat(stations[i].coordinates.longitude);
		distances[i]=((y2-y1)*(y2-y1))+((x2-x1)*(x2-x1));
	}
	return distances;

}

function getDistance(x1,y1,x2,y2)
{
	return ((y2-y1)*(y2-y1))+((x2-x1)*(x2-x1));
}

function getResult(currentX,currentY,stations)
{
	var positions = new Array(stations.length);	
	var distanceMatrix=getAllDistances(stations[0].coordinates.latitude,stations[0].coordinates.longitude,stations);
	var currentToOrigin=getDistance(currentX,currentY,stations[0].coordinates.latitude,stations[0].coordinates.longitude);
	var i=0;
	while(distanceMatrix[i]<currentToOrigin)		
	{
		i++;
		if(i==stations.length)
			return -1;
	}
	return i;
}