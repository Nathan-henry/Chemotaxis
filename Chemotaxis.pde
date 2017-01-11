Bacteria[] colony;

void setup()
{
  size (500,500);
  colony = new Bacteria[200];
  for (int a = 0; a < colony.length; a++)
  {
    colony[a] = new Bacteria();
  }
}

void draw()
{
  fill(0);
  rect(0,0,500,500);
  for (int a = 0; a < colony.length; a++)
  {
    colony[a].move();
    colony[a].show();
  }
}

class Bacteria
{
  int myX,myY,a,i,j,k; //a is random integer storage, j, k, & l are random colors
  Bacteria()
  {
    myX = (int) (Math.random()*501);
    myY = (int) (Math.random()*501);
    i = (int) (Math.random()*255);
    j = (int) (Math.random()*255);
    k = (int) (Math.random()*255);
  }
  void show()
  {
    fill(i,j,k);
    ellipse(myX,myY, 10,10);
  }
  void move()
  {
    if (mouseX > myX && mouseY > myY)
    {
      a = (int) (Math.random()*2);
      if (a == 0)
      {
        myX++;
      }
      if (a == 1)
      {
        myY++;
      }
    }
    if (mouseX < myX && mouseY < myY)
    {
      a = (int) (Math.random()*2);
      if (a == 0)
      {
        myX--;
      }
      if (a == 1)
      {
        myY--;
      }
    }
    if (mouseX < myX && mouseY > myY)
    {
      a = (int) (Math.random()*2);
      if (a == 0)
      {
        myX--;
      }
      if (a == 1)
      {
        myY++;
      }
    }
    if (mouseX > myX && mouseY < myY)
    {
      a = (int) (Math.random()*3);
      if (a == 0)
      {
        myX++;
      }
      if (a == 1)
      {
        myY--;
      }
      if (a == 2) //WIP
      {
        
      }
    }
    else
    {
      a = (int) (Math.random()*4);
      if (a == 0)
      {
        myX += 2;
      }
      if (a == 1)
      {
        myX -= 2;
      }
      if (a == 2)
      {
        myY += 2;
      }
      if (a == 3)
      {
        myY -= 2;
      }
    }
  }
}
