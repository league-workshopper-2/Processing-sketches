import ddf.minim.*;
Minim minim;
AudioPlayer song;
PImage pictureOfRecord;
int angle;
void setup(){
  pictureOfRecord= loadImage("record.png");
  size(pictureOfRecord.width, pictureOfRecord.height);
   minim=new Minim(this);
  song=minim.loadFile("fade.wav",512);
  song.play();
}
void draw(){
  //rotateImage(pictureOfRecord, angle);
  //image(pictureOfRecord, 0, 0);
angle+=180; 
  if(mousePressed){
  song.play();
  }else{
   song.pause();
  }
if(mousePressed){
      rotateImage(pictureOfRecord, angle); 
     }
     image(pictureOfRecord, 0, 0);
  }
void rotateImage(PImage image, int amountToRotate){
 translate(width/2, height/2);
      rotate(amountToRotate*TWO_PI/360);                              
      translate(-image.width/2, -image.height/2);
}

