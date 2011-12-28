class Human {
    private String firstName;
	private String lastName;
	
	public String getFirstName() {
		return this.firstName;
	}
    
	public void setFirstName(String value) {
		this.firstName = value;
	}

	public String getLastName() {
		return this.lastName;
	}
    
	public void setLastName(String value) {
		this.lastName = value;
	}

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
		bob.setFirstName("BOB");
		bob.setLastName("MORANE");
		bob.hello();
    }
}