Die bob;
int sum;
int s =12;
void setup()
{
  size(480, 480);
  noLoop();
}
void draw()

{

  background(0);
  sum = 0;
  int m, g; 
  for (m =50; m<450; m =m+100)
  {
    for (g=50; g<400; g = g+100)
    {
      Die bob=new Die(m, g);
      bob.roll();
      bob.show();
    }
  }
  textSize(40);
  fill(255);
  text("Sum: "+ sum, 170, 470);
  System.out.println(sum);
}

void mousePressed()
{
  redraw();
}
class Die //models one single dice cube
{
  int dots, myX, myY;
  
  Die(int x, int y) //constructor
  {
    roll();
    myX = x;
    myY= y;
  }
  void roll()
  {
    dots = (int) (Math.random()*6)+1;
  }
  void show()
  {
    fill(255);
    rect (myX, myY, 80, 80, 10);
    if (dots == 1)
    {

      fill(0);
      ellipse(myX+60, myY+40, s, s);
    } else if (dots ==2)
    {

      fill(0);
      ellipse(myX+60, myY+20, s, s);
      fill(0);
      ellipse(myY+20, myY+60, s, s);
    } else if (dots == 3)
    {

      fill(0);
      ellipse(myX+40, myY+40, s, s);
      fill(0);
      ellipse(myX+60, myY+20, s, s);
      fill(0);
      ellipse(myX+20, myY+60, s, s);
    } else if (dots == 4)
    {
      fill(0);
      ellipse(myX+60, myY+60, s, s);
      fill(0);
      ellipse(myX+20, myY+20, s, s);
      fill(0);
      ellipse(myX+60, myY+20, s, s);
      fill(0);
      ellipse(myX+20, myY+60, s, s);
    } else if (dots ==5)
    {
      fill(0);
      ellipse(myX+40, myY+40, s, s);
      fill(0);
      ellipse(myX+60, myY+60, s, s);
      fill(0);
      ellipse(myX+20, myY+20, s, s);
      fill(0);
      ellipse(myX+60, myY+20, s, s);
      fill(0);
      ellipse(myX+20, myY+60, s, s);
    } else if (dots ==6)
    {
      fill(0);
      ellipse(myX+20, myY+40, s, s);
      fill(0);
      ellipse(myX+60, myY+40, s, s);
      fill(0);
      ellipse(myX+60, myY+60, s, s);
      fill(0);
      ellipse(myX+20, myY+20, s, s);
      fill(0);
      ellipse(myX+60, myY+20, s, s);
      fill(0);
      ellipse(myX+20, myY+60, s, s);
    }
    sum += dots;
  }
}
