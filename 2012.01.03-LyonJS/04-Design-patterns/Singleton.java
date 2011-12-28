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
}


public class Singleton {

    public static void main(String[] args) {
		SantaClaus santa = SantaClaus.getTheOne();
		System.out.println(santa.name);
		SantaClaus santaAgain = SantaClaus.getTheOne();
		System.out.println(santaAgain.name);
		
		santaAgain.name = "Père Noël";
		System.out.println(santa.name);
		
		SantaClaus santaAgainAgain = SantaClaus.getTheOne();
		
    }
}