package badoora;

public class application {
	private int id ;
	private int age;
	private String firat;
	private String last;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	
	public application(int id, int age, String firat, String last) {
		super();
		this.id = id;
		this.age = age;
		this.firat = firat;
		this.last = last;
	}
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
	}
	public String getFirat() {
		return firat;
	}
	public void setFirat(String firat) {
		this.firat = firat;
	}
	public String getLast() {
		return last;
	}
	public void setLast(String last) {
		this.last = last;
	}

}
