Spaceship one =new Spaceship(250,750);
void setup(){
size(500,800);
}
void draw(){
background(0,0,0);
one.display();
CanvasBorder();
}
public class Spaceship{
 int positionx;
int positiony; 

  int getx(){
  return this.positionx;
  }
  int gety(){
  return this.positiony;
  }

  void setx(int positionx){
   this.positionx=positionx; 
  }
  void sety(int positiony){
   this.positiony=positiony; 
  }

Spaceship(int positionx, int positiony){
 this.positionx=positionx;
 this.positiony=positiony;
}
void display(){
    fill(0,255,0);
    rect(positionx , positiony,  50, 50);
}
}
void keyPressed(){
  if(key == CODED){
      if(keyCode == RIGHT)
      {
one.setx(one.getx()+10);
      }
      else if(keyCode == LEFT)
      {
        one.setx(one.getx()-10);
      }
}
}
void CanvasBorder(){
 if(one.getx()>450){
  one.setx(450);
 } 
}
