class Dog {
	public String name = "";
	public Dog(String name){ this.name = name; }
}

class Human {
    public String firstName = "???";
	public String lastName = "???";
	public Dog hisDog = null;
	
    public Human(String first, String last) {
        this.firstName = first;
		this.lastName = last;
    }
    
    public void adopt(Dog dog) {
		this.hisDog = dog;
        System.out.println(this.firstName+" "+this.lastName+" adopts "+ dog.name);
    }
	
	public void giveHisDogTo(Human human) {
		human.hisDog = this.hisDog;
		System.out.println(this.firstName+" "+this.lastName+" gives "+this.hisDog.name+" to "+human.firstName+" "+human.lastName);
		this.hisDog = null;
	}
}

public class Demo {

    public static void main(String[] args) {
        Human bob = new Human("Bob","Morane");
		Human sam = new Human("Sam","LePirate");
		Dog wolf = new Dog("Wolf");
		bob.adopt(wolf);
		System.out.println("Bob's dog : "+bob.hisDog.name);
		bob.giveHisDogTo(sam);
		System.out.println("Sam's dog : "+sam.hisDog.name);
		System.out.println("Bob's dog : "+bob.hisDog.name);
    }
}