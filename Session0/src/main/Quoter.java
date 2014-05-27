package nl.utwente.di01;

public class Quoter {
	public Quoter() {

	}

	public Double getBookPrice(String number) {
		Double returnPrice;

		Integer intNumber = Integer.parseInt(number);

		if (intNumber != null) {
			switch (intNumber) {
			case 1:
				returnPrice = 10.0;
				break;
			case 2:
				returnPrice = 45.0;
				break;
			case 3:
				returnPrice = 20.0;
				break;
			case 4:
				returnPrice = 35.0;
				break;
			case 5:
				returnPrice = 50.0;
				break;
			default:
				returnPrice = 0.0;
				break;
			}
		} else {
			returnPrice = 0.0;
		}

		return returnPrice;

	}
}
