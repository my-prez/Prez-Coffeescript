class Human {
    public String firstName;
	public String lastName;
	
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
		bob.hello();
		bob.firstName = "BOB";
		bob.lastName = "MORANE";
		bob.hello();
    }
}