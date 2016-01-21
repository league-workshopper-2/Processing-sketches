void setup() {
  size (500,500);
  fill (255,170,017);
  ellipse (250,250,450,450);
  fill(255,000,000);
  ellipse (250,250,400,400);
  fill(238,221,000);
  ellipse (250,250,300,300);
}
void draw() {
  PImage eyeball = loadImage("eyeball.gif");  
    image(eyeball, 250, 250);
    image(eyeball, 300, 300);
    image(eyeball, 200, 200);
if (mousePressed) { image(eyeball,mouseX,mouseY);

}

}

