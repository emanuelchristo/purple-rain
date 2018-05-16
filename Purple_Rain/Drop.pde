
class Drop
{
  float XLoc;
  float YLoc;
  float ZLoc;
  float Width;
  float Height;
  float Velocity;
  float Acceleration;
  float Alpha;
  color Color;
   
  Drop()
  {
    ResetVars();
  }
  
  void Fall()
  {
    noStroke();
    fill(Color);
    rect(XLoc,YLoc,Width,Height);
    Velocity += Acceleration;
    YLoc += Velocity;
    println(XLoc);
  }
  
  void CheckOver()
  {
    if(YLoc > height)
    {  
      ResetVars();
    }
  }
  
  void ResetVars()
  {
    XLoc = random(width);
    YLoc = random(-550,-50);
    ZLoc = random(0,20);
    Width = map(ZLoc,0,20,3,7);
    Height = map(ZLoc,0,20,10,40);
    Velocity = 0;
    Acceleration = map(ZLoc,0,20,0.05,0.3);
    Alpha = map(ZLoc,0,20,50,220);
    Color = color(128,33,216,Alpha);
  }
  
};