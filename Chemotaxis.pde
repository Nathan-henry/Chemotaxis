Bacteria[] colony;

void setup()
{
  size (500,500);
  colony = new Bacteria[500];
  for (int a = 0; a < colony.length; a++)
  {
    colony[a] = new Bacteria();
  }
}

void draw()
{
  int c; //Number for comparison of positions;
  fill(0);
  rect(0,0,500,500);
  for (int a = 0; a < colony.length; a++)
  {
    colony[a].move();
    colony[a].show();
    /* This didn't work at all.
    for (int b = 0; a < colony.length; a++)
    {
      if (colony[a].myX == colony[b].myX)
      {
        c = (int) (Math.random()*2);
        if (a == 0)
        {
          colony[a].myX += 1;
        }
        if (a == 1)
        {
          colony[a].myX -= 1;
        }
      }
      if (colony[a].myY == colony[b].myY)
      {
        c = (int) (Math.random()*2);
        if (a == 0)
        {
          colony[a].myY += 1;
        }
        if (a == 1)
        {
          colony[a].myY -= 1;
        }
      }
    }
    */
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
    ellipse(myX,myY, 5,5);
  }
  void move()
  {
    if (mouseX > myX && mouseY > myY)
    {
      a = (int) (Math.random()*5);
      if (a == 0)
      {
        myX += 2;
      }
      if (a == 1)
      {
        myY += 2;
      }
      if (a == 2)
      {
        myX++;
        myY++;
      }
      if (a == 3)
      {
        myX--;
      }
      if (a == 4)
      {
        myY--;
      }
    }
    if (mouseX < myX && mouseY < myY)
    {
      a = (int) (Math.random()*5);
      if (a == 0)
      {
        myX -= 2;
      }
      if (a == 1)
      {
        myY -= 2;
      }
      if (a == 2)
      {
        myX--;
        myY--;
      }
      if (a == 3)
      {
        myX++;
      }
      if (a == 4)
      {
        myY++;
      }
    }
    if (mouseX < myX && mouseY > myY)
    {
      a = (int) (Math.random()*5);
      if (a == 0)
      {
        myX -= 2;
      }
      if (a == 1)
      {
        myY += 2;
      }
      if (a == 2)
      {
        myX--;
        myY++;
      }
      if (a == 3)
      {
        myX--;
      }
      if (a == 4)
      {
        myY++;
      }
    }
    if (mouseX > myX && mouseY < myY)
    {
      a = (int) (Math.random()*5);
      if (a == 0)
      {
        myX += 2;
      }
      if (a == 1)
      {
        myY += 2;
      }
      if (a == 2)
      {
        myX++;
        myY--;
      }
      if (a == 3)
      {
        myX++;
      }
      if (a == 4)
      {
        myY--;
      }
    }
    /*
    if (mouseY == myY && mouseX == myX)
    {
      myX = (int) (Math.random()*501);
      myY = (int) (Math.random()*501);
    }
    */
    if (mouseX == myX);
    {
      a = (int) (Math.random()*2);
      if (a == 0)
      {
      myX += 1;
      }
      if (a == 1)
      {
        myX -= 1;
      }
    }
    if (mouseY == myY);
    {
      a = (int) (Math.random()*2);
      if (a == 0)
      {
      myY += 1;
      }
      if (a == 1)
      {
        myY -= 1;
      }
    }
  }
}
