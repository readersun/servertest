package lombok;

public class Main {
	public static void main(String[] args) {
		Student s = new Student();
		s.setName("hone");
		s.setHp("010-2222-2222");
		System.out.println(s.getName());
		System.out.println(s.getHp());

		Student s1 = new Student("hong1", "0100-3333-3333");
		System.out.println(s1.getName());	
		System.out.println(s1.getHp().toString());
	}

}
