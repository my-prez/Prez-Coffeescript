class Human {
	
	class Hand {
		public String whichOne = "";
		public Hand(String which_one){ this.whichOne = which_one; }
		public void take(String something) {
			System.out.println("Taking " + something + " with the " + this.whichOne + " hand" );
		}
	}
	
    public String firstName = "???";
	public String lastName = "???";
	
	public Hand rightHand = new Hand("right");
	public Hand leftHand = new Hand("left");
	
    public Human(String first, String last) {
        this.firstName = first;
		this.lastName = last;
    }
    
    public void hello() {
        System.out.println("Hello "+this.firstName+" "+this.lastName);
    }
}


public class Demo {

    public static void main(String[] args) {
        Human bob = new Human("Bob","Morane");
		
		bob.rightHand.take("a book");
		bob.leftHand.take("a glass");
    }
}