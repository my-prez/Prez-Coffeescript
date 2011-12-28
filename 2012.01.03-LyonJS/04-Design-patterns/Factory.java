interface Toy {
	public void what();
}
class Car implements Toy {
	public void what() {
		System.out.println("this is a car");
	}
}
class Doll implements Toy {
	public void what() {
		System.out.println("this is a doll");
	}
}

class SantaClaus {

	private static SantaClaus uniqueSantaClaus;
	public String name = "Santa Claus";
    private SantaClaus() {}
    
    public static SantaClaus getTheOne() {
		if(uniqueSantaClaus == null) {
			uniqueSantaClaus = new SantaClaus();
		} else {
			System.out.println("Bien essayé mais il n'existe qu'un seul " + uniqueSantaClaus.name);
		}
		return uniqueSantaClaus;
    }
	
	public Toy offers(String toyName) {
		Toy toy = null;
		if(toyName=="car"){ toy = new Car(); }
		if(toyName=="doll"){ toy = new Doll(); }
		return toy;
	}
}


public class Factory {

    public static void main(String[] args) {
		
		SantaClaus santa = SantaClaus.getTheOne();
		
		santa.offers("car").what();
		santa.offers("doll").what();
		
		System.out.println(santa.offers("car").getClass().getName());
		System.out.println(santa.offers("doll").getClass().getName());
		
    }
}