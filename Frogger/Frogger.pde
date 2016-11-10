
Car car2=new Car(170,55);
Car car3=new Car(285,55);
Car car4=new Car(400,55);
Car car5=new Car(515,55);
Car car6=new Car(630,55);
int xpos;
int ypos;
void setup(){
  size(800,800);
}
void draw(){
  background(0,255,0);
  ellipse(xpos,ypos,55,55);
    fill(0,85,0);
    keepFrog();
    
    car2.display();
    car3.display();
    car4.display();
    car5.display();
    car6.display();
    
    car2.carspeed();
    car3.carspeed2();
    car4.carspeed();
    car5.carspeed2();
    car6.carspeed();
    
    car2.comeback();
    car3.comeback();
    car4.comeback();
    car5.comeback();
    car6.comeback();
    
    
}
void keyPressed(){
if(key == CODED){
      if(keyCode == UP)
      {
      //Frog Y position goes up
      ypos-=5;
      }
      else if(keyCode == DOWN)
      {
        //Frog Y position goes down 
        ypos+=5;
      }
      else if(keyCode == RIGHT)
      {
       //Frog X position goes right
       xpos+=5;
      }
      else if(keyCode == LEFT)
      {
        //Frog X position goes left
        xpos-=5;
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
int carx=55;
int cary=110;
Car(int carx, int cary){
  this.carx=carx;
  this.cary=cary;
}
void comeback(){
if(cary>800){
cary=0;}
else if(cary<0){
cary=800;
}
}
void display() 
  {
    fill(17,0,0);
    rect(carx,cary,55,55);
  }
  void carspeed(){
    cary +=5;
  }
  void carspeed2(){
    cary -=5;
  }
  void getX(){

}
void getY(){
  
}
void getSize(){
  
}
}