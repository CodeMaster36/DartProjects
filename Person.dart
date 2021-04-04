void main() {
	var p1 = new Person("Nitin","Giri","Male",22);
	p1.printName();
	var p2 = new Person("Anchit","Banga","Female",20);
	p2.printName();
}

class Person{
	String firstName;
	String lastname;
	String gender;
	int age;
	Person(this.firstName,this.lastname,this.gender,this.age);

	void printName(){
		print(firstName);
		print(lastname);
		print(gender);
		print(age);
	}
}