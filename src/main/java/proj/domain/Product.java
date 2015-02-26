package proj.domain;

public class Product {
	
	private String id;
	
	private String name;
	
	private String detial;
	
	private String imgSrc;
	
	private String subTitle;
	
	
	

	public Product(String id, String name, String detial, String imgSrc,
			String subTitle) {
		super();
		this.id = id;
		this.name = name;
		this.detial = detial;
		this.imgSrc = imgSrc;
		this.subTitle = subTitle;
	}

	public Product(String id, String name, String detial, String imgSrc) {
		super();
		this.id = id;
		this.name = name;
		this.detial = detial;
		this.imgSrc = imgSrc;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getDetial() {
		return detial;
	}

	public void setDetial(String detial) {
		this.detial = detial;
	}

	public String getImgSrc() {
		return imgSrc;
	}

	public void setImgSrc(String imgSrc) {
		this.imgSrc = imgSrc;
	}

	public String getSubTitle() {
		return subTitle;
	}

	public void setSubTitle(String subTitle) {
		this.subTitle = subTitle;
	}
	
	
	

}
