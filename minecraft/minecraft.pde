int x=720;
int y=450;
PImage creeper;
void setup(){
  creeper=loadImage("creeper.png");
  creeper.resize(5,5);
size(1440,900);
PImage minecraft=loadImage("forest.png");
background(minecraft);
}
void draw(){
  image(creeper,x,y);
  println(mouseX,mouseY);
  if(mousePressed){
  if(isNear(mouseX,x)&&isNear(mouseY,y)){
  textSize(30);
    text("you won",720,450);
    fill(000,170,000);
  
  }
  else {
    fill(238,000,000);}
  ellipse(mouseX,mouseY,10,10);
  }
  
}
boolean isNear(int a, int b) {
      if (abs(a - b) < 10)
          return true;
    else
       return false;
}

