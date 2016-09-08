void setup()
{
	size(500,500);
	noLoop();
}
void draw()
{
	background(125);
	for(int x = 50; x < 500; x = x + 5) {
		Die one = new Die();
		one.show();
	}

}
void mousePressed()
{
	redraw();
}
class Die //models one single dice cube
	{
	//variable declarations here
	int numRolled, myX, myY;
	Die()
	{
		roll();
		myX = 10;
		myY = 10;
	}
	void roll()
	{
		numRolled = (int)((Math.random()*6) + 1);
	}
	void show()
	{
		fill(255);
		rect(myX,myY,50,50, 10);
		if(numRolled == 1) {
		fill(0);
		ellipse(myX + 25, myY + 25, 10 ,10);
	}
		if(numRolled == 2) {
		fill(0);
		ellipse(myX + 17, myY + 25, 10, 10);
		ellipse(myX + 35, myY + 25, 10, 10);
	}
		if(numRolled == 3) {
		fill(0);
		ellipse(myX + 25, myY + 25, 10 ,10);
		ellipse(myX + 25, myY + 12, 10, 10);
		ellipse(myX + 25, myY + 38, 10, 10);
		}
		if(numRolled == 4) {
		fill(0);
		ellipse(myX + 17, myY + 35, 10, 10);
		ellipse(myX + 35, myY + 35, 10, 10);
		ellipse(myX + 17, myY + 15, 10, 10);
		ellipse(myX + 35, myY + 15, 10, 10);
		}
		
}
}