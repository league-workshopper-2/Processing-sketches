PImage pictureOfRecord;
int angle;
void setup(){
  pictureOfRecord= loadImage("record.png");
  size(pictureOfRecord.width, pictureOfRecord.height);
}
void draw(){
  rotateImage(pictureOfRecord, angle);
  image(pictureOfRecord, 0, 0);
angle+=10; 
  }
void rotateImage(PImage image, int amountToRotate){
 translate(width/2, height/2);
      rotate(amountToRotate*TWO_PI/360);                              
      translate(-image.width/2, -image.height/2); 
}

