PImage tail;
PImage donkey;
int Xposition;
int Yposition;
int pressed=0;
void setup(){
 size(1000,687);
  donkey =loadImage("donkey.jpg");
  background(donkey);
  tail=loadImage("tail.png");
 
}
void draw(){
  rect(0,0,150,150);
if(mouseX<150 && mouseY<150){
background(donkey);
}
else{
  background(255,255,255);
}
  if(mousePressed){
    image(tail, mouseX-140, mouseY-50);
    Xposition=mouseX-140;
    Yposition=mouseY-50;
    pressed=1; 
  }
  if(pressed==1){
  image(tail, Xposition, Yposition);
  }
}

