Car car=new Car(110,55);
Car car2=new Car(185,55);
Car car3=new Car(260,55);
int xpos=745;
int ypos=400;
void setup(){
  size(800,800);
}
void draw(){
  background(0,255,0);
  ellipse(xpos,ypos,55,55);
    fill(0,85,0);
    keepFrog();
    car.display();
    car2.display();
    car3.display();
}
void keyPressed(){
if(key == CODED){
      if(keyCode == UP)
      {
      //Frog Y position goes up
      ypos-=10;
      }
      else if(keyCode == DOWN)
      {
        //Frog Y position goes down 
        ypos+=10;
      }
      else if(keyCode == RIGHT)
      {
       //Frog X position goes right
       xpos+=10;
      }
      else if(keyCode == LEFT)
      {
        //Frog X position goes left
        xpos-=10;
      }
      
}
}
void keepFrog(){
if(xpos<55){
  xpos+=10;
}
else if(xpos>745){
  xpos-=10;
}
if(ypos<55){
ypos+=10;
}
else if(ypos>745){
ypos-=10;
}
}
class Car{
int carx=110;
int cary=55;
Car(int carx, int cary){
  this.carx=carx;
  this.cary=cary;
}
void display() 
  {
    fill(0,255,0);
    rect(carx,cary,55,110);
  }

}