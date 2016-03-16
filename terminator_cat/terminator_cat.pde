import ddf.minim.*;
AudioSample sound;
int positionx=490;
int positiony=570;
PImage catPic;
int acceleration=1;
void setup(){
size(1280,960);
catPic=loadImage("tabby.jpg");
background(catPic);
Minim minim = new Minim(this);
sound = minim.loadSample("pew.wav");
}
void draw(){
if(acceleration==1){
sound.trigger();
}
fill(255,000,000);
noStroke();
ellipse(positionx,positiony,170,110);
ellipse(positionx+385,positiony,170,110);
if(positiony>960){
background(catPic);
positionx=490;
positiony=570;

}
}
void keyPressed() {
positionx++;
positiony+=2*acceleration;
acceleration+=2;
}

