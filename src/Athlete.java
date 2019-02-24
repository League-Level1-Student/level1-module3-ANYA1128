
public class Athlete {

     static int nextBibNumber = 0;
     static String raceLocation = "Paris";
     static String raceStartTime = "9.00am";

     String name;
     int speed;
     int bibNumber;

Athlete (String name, int speed, int bibNumber){
     this.name = name;
     this.speed = speed;
     this.bibNumber = bibNumber;
     nextBibNumber++;
}

public static void main(String[] args) {
     //create two athletes      //print their names, bibNumbers, and the location of their race.
	Athlete bob = new Athlete("bob",2356, nextBibNumber);
	Athlete bobjr = new Athlete("bobjr",2479, nextBibNumber);
	System.out.println(bob.name);
	System.out.println(bobjr.name);
	System.out.println(bob.raceLocation);
	System.out.println(bobjr.raceLocation);
	System.out.println(bob.bibNumber);
	System.out.println(bobjr.bibNumber);
	
	
}
}