void setup()
{
  size(500, 500);
  textAlign(CENTER, CENTER);
  background(0);
  noLoop();
}
Dice bob;
int sum = 0;
void draw()
{
  background(0);
  for (int x = 50; x < 450; x = x+60) {
    for (int y = 50; y < 450; y +=60) {
      bob = new Dice(x, y);
      sum = sum + bob.goblin;
      bob.show();
    }
  }
  fill(255);
  text("Sum = " + sum, 250, 30);
}
void mousePressed()
{
  redraw();
  sum=0;
}
class Dice
{
  //three member variables
  int myX, myY, goblin;

  //three member functions
  Dice(int x, int y) //constructor
  {
    myX = x;
    myY = y;
    roll();
  }
  void roll()
  {
    goblin = ((int)(Math.random()*6)+1);
  }
  void show() {
    fill((int)(Math.random()*255)+30);
    rect(myX, myY, 50, 50);
    fill(235);
    if (goblin == 1) {
      ellipse(myX+25, myY+25, 10, 10);
    } else if (goblin == 2) {
      ellipse(myX+12, myY+12, 10, 10);
      ellipse(myX+38, myY+38, 10, 10);
    } else if (goblin == 3) {
      ellipse(myX+12, myY+12, 10, 10);
      ellipse(myX+38, myY+38, 10, 10);
      ellipse(myX+25, myY+25, 10, 10);
    } else if (goblin == 4) {
      ellipse(myX+12, myY+12, 10, 10);
      ellipse(myX+38, myY+38, 10, 10);
      ellipse(myX+38, myY+12, 10, 10);
      ellipse(myX+12, myY+38, 10, 10);
    } else if (goblin == 5) {
      ellipse(myX+12, myY+12, 10, 10);
      ellipse(myX+38, myY+38, 10, 10);
      ellipse(myX+38, myY+12, 10, 10);
      ellipse(myX+12, myY+38, 10, 10);
      ellipse(myX+25, myY+25, 10, 10);
    } else if (goblin == 6) {
      ellipse(myX+12, myY+12, 10, 10);
      ellipse(myX+38, myY+38, 10, 10);
      ellipse(myX+38, myY+12, 10, 10);
      ellipse(myX+12, myY+38, 10, 10);
      ellipse(myX+12, myY+25, 10, 10);
      ellipse(myX+38, myY+25, 10, 10);
    }
  }
}
