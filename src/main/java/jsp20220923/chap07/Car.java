package jsp20220923.chap07;

public class Car {
	private String model;
	private Integer price;
	public Car() {
		
	}

	public Car(String model, Integer price) {
		super();
		this.model = model;
		this.price = price;
	}

	public String getModel() {
		return model;
	}

	public Integer getPrice() {
		return price;
	}
	
	public void setModel(String model) {
		this.model = model;
	}
	
	public void setPrice(Integer price) {
		this.price = price;
	}
	//읽을 수 있는 company 프로퍼티 결정
	public String getCompany() {
		return "현대";
	}
	
}
