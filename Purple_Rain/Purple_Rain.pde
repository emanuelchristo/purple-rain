
Drop[] drop = new Drop[110];
void setup()
{
  size(1000,600);  
  for(int i=0; i<drop.length; i++)
  {
    drop[i] = new Drop();
  }
  surface.setResizable(true);
}

void draw()
{
  background(230,230,250);
  for(int i=0; i<drop.length; i++)
  {
    drop[i].CheckOver();
    drop[i].Fall(); 
  }

}