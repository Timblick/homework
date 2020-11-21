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
  if(100<x&x<200){
  fill(random(1,50));
  }
   if(200<x&x<300){
  fill(random(50,120));
  }
   if(300<x&x<400){
  fill(120,250);
  }
   if(400<x&x<800){
  fill(255);
  }
  strokeWeight(20);
  rect(int(width/random(0,6)*(i+0.5))-200,int(width/random(0,6)*(i+0.5))-200,x,y);
}}}
