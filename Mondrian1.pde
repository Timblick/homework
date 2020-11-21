void setup(){
fullScreen();
//size(1000,1000);
background(255);
frameRate(1);
}
void draw(){
for(int i=0;i<10;i++){
for(int j=0;j<10;j++){
float x=random(20,800);
float y=random(20,800);
  if (x<100){
fill(0);
  }
  if(100<x&x<300){
  fill(255,mouseX,mouseY);
  }
   if(300<x&x<500){
  fill(mouseX,mouseY,255);
  }
   if(500<x&x<700){
  fill(255);
  }
   if(700<x&x<800){
  fill(255,255,mouseX);
  }
  strokeWeight(20);
  rect(int(width/random(0,6)*(i+0.5))-200,int(width/random(0,6)*(i+0.5))-200,x,y);
}}}
