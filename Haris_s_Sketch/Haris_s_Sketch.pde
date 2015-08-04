void setup()
{
  size(1000,1000,P3D);
  background(100,1000,100);
}
void draw()
{
if(mousePressed)
{
  fill(random(225),random(255),random(255));
  noStroke();
lights();
translate(mouseX,mouseY,50);
sphere(50);
}
}
