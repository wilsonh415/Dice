void setup()
{
	size(1000,1000);
	noLoop();
}
void draw()
{
	background(125);
	for(void x = 50; for x < 1000; x = x + 5) {

	}


}
void mousePressed()
{
	redraw();
}
class Die //models one single dice cube
{
	//variable declarations here
	Die(int x, int y) //constructor
	{
		int value;
		int myX, myY;
		Die(int x, int y) {

		value = (int)(Math.random()*7);
		myX = x;
		myY = y;
	}
	}
	void roll()
	{
		//your code here
	}
	void show()
	{
		fill(255);
		rect(myX,myY,20,20);
	}
}
