
public class NETFLIX {
	public static void main(String[] args) {
		Movie thor = new Movie("Thor Ragnarok", 5);
		Movie panther = new Movie("Black Panther", 4);
		Movie hp = new Movie("Crimes of Grindlewald", 3);
		Movie st3 = new Movie("Starship Troopers 3", 2);
		Movie aquaman = new Movie("Aquaman", 1);
		thor.getTicketPrice();
		NetflixQueue net = new NetflixQueue();
		net.addMovie(thor);
		net.addMovie(panther);
		net.addMovie(hp);
		net.addMovie(st3);
		net.addMovie(aquaman);
		net.printMovies();
		System.out.println("The best movie is " + net.getBestMovie() + ".");
		System.out.println("The second best movie is " + net.getMovie(1) + ".");
	}
}
