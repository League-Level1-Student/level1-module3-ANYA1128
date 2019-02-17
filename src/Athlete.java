public class Athlete {

     static int nextBibNumber;
     static String raceLocation = "New York";
     static String raceStartTime = "9.00am";

     String name;
     int speed;
     int bibNumber;

Athlete (String name, int speed, int bibNumber){
     this.name = name;
     this.speed = speed;
     this.bibNumber = bibNumber;
}

public static void main(String[] args) {
     //create two athletes      //print their names, bibNumbers, and the location of their race.
	Athlete bob = new Athlete();
	Athlete bobjr = new Athlete();
}
}