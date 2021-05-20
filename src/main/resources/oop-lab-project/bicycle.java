class Bicycle{
	
	int speed = 100;
	int noOfgears =5;
	int cadence = 0;
	
	public Bicycle();
	
	public void printState() {
		System.out.println("Bicycle[cadence="+ cadence+",noOfgears = " + noOfgears + ",speed = "+speed"]);
	}
	public static void main(String[] args) {
		Bicycle bi = new Bicycle();
		bi.printState();
	}
	
	
}
