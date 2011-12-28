class Human {
    public String firstName = "???";
	public String lastName = "???";
	
    public Human(String first, String last) {
        this.firstName = first;
		this.lastName = last;
    }
    
    public void hello() {
        System.out.println("Hello "+this.firstName+" "+this.lastName);
    }
}

class SuperHero extends Human {

	public String name;

    public SuperHero(String first, String last, String name) {
		super(first, last);
		this.name = name;
    }
    public void secret() {
        System.out.println("Hello "+this.name);
    }
}


public class Demo {

    public static void main(String[] args) {
		
		SuperHero clark = new SuperHero("Clark", "Kent", "SuperMan");
		clark.hello();
		clark.secret();
    }
}