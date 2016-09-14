int numRolled;
int theTotal = 0;
void setup()
{
	size(500,500);
	noLoop();
}
void draw()
{
	background(125);
	for(int x = 15; x < 480; x+= 60) {
		for(int y = 15; y < 430; y+= 60) {
		Die one = new Die(x, y); 
		one.show();
		theTotal = theTotal + numRolled;
		}
	fill(0,125,0);
	textSize(50);
	text("Total:" + theTotal, 30, 475);
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
	Die(int x, int y)
	{
		roll();
		myX = x;
		myY = y;
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
		if(numRolled ==5) {
		fill(0);
		ellipse(myX + 25, myY + 25, 10 ,10);
		ellipse(myX + 15, myY + 37, 10, 10);
		ellipse(myX + 37, myY + 37, 10, 10);
		ellipse(myX + 15, myY + 13, 10, 10);
		ellipse(myX + 37, myY + 13, 10, 10);
		}
		if(numRolled == 6){
		fill(0);
		ellipse(myX + 17, myY + 25, 10 ,10);
		ellipse(myX + 17, myY + 12, 10, 10);
		ellipse(myX + 17, myY + 38, 10, 10);
		ellipse(myX + 35, myY + 25, 10 ,10);
		ellipse(myX + 35, myY + 12, 10, 10);
		ellipse(myX + 35, myY + 38, 10, 10);
		}
}
}