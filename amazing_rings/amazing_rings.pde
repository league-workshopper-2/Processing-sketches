int num=300;
int numb=700;
void setup(){
  size(1000,1000);
}
void draw(){
background(255,255,255);
  noFill();
  for(int i=0; i<50; i++){
  ellipse(num,500,50+i*7,50+i*7);
  
}

for(int i=0; i<50; i++){
  ellipse(numb,500,50+i*7,50+i*7);
}

num++;
numb--;
}
