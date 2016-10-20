ArrayList<bullet> arrayofbullets=new ArrayList<bullet>();

Spaceship one =new Spaceship(250,750);
void setup(){
size(500,800);
}
void draw(){
background(0,0,0);
one.display();
CanvasBorder();
moveAllBullets();
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
else if(keyPressed && key == ' ')
  {
    bullet b=new bullet(one.getx(),one.gety());
    //create a new bullet object
    //add it to the arraylist
arrayofbullets.add(b);  
}
}
void CanvasBorder(){
 if(one.getx()>450){
  one.setx(450);
 } 
 if(one.getx()<0){
  one.setx(0);
 }
}

public class bullet{
int x;
int y;
  
  void display() 
  {
     stroke(255);
    point(x,y);

}

  bullet(int x, int y){
    this.x=x;
    this.y=y;
  }
  int getx(){
    return this.x;
  }
  void setx(int y){
    this.x=x;
  }
int gety(){
  return this.y;
}
void sety(int y){
this.y=y;
}
void move(){
   sety(gety() - 10);
  }

}
void moveAllBullets(){
  for(bullet b: arrayofbullets){
    b.move();
    b.display();
  }
}