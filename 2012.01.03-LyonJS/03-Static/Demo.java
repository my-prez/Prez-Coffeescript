class Human {
    public String firstName = "???";
	public String lastName = "???";
	
	public static Integer humanCounter = 0;
	
    public Human(String first, String last) {
        this.firstName = first;
		this.lastName = last;
		humanCounter +=1;
    }
    
    public void hello() {
        System.out.println("Hello "+this.firstName+" "+this.lastName);
    }
}

class SuperHero extends Human {

	public String name;
	
	public static Integer superHeroCounter = 0;

    public SuperHero(String first, String last, String name) {
		super(first, last);
		superHeroCounter +=1;
		this.name = name;
    }
    public void secret() {
        System.out.println("Hello "+this.name);
    }
}

public class Demo {

    public static void main(String[] args) {
		
		Human bob = new Human("Bob","Morane");
		Human sam = new Human("Sam","LePirate");
		
		SuperHero clark = new SuperHero("Clark", "Kent", "SuperMan");
		SuperHero peter = new SuperHero("Peter", "Parker", "SpderMan");

		System.out.println("Human Counter (from Human) : " + Human.humanCounter + " (from SuperHero) : " + SuperHero.humanCounter);
		System.out.println("SuperHero Counter : "+SuperHero.superHeroCounter);
		
    }
}