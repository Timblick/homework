int p=0;
int q=0;
int cnt=0;
int inc=1;
float r=random(255);
float g=random(255);
float b=random(255);
void setup() {
  size(1200, 1000);
  background(255);
  noStroke();
  }

void keyPressed() {
  if (key==' ') {
    background(255);
  }
}
void draw() {
  frameRate(50);
  noStroke();
  fill(200);
  rect(0, 0, 80, 140);
  rect(0,160,80,140);
  rect(0,950,200,50);
  textSize(12);
  textAlign(LEFT);
  fill(0);
  text("line",30,55);
  text("curve",25,95);  
  text("rose",30,135);
  text("color1",25,215);
  text("color2",25,255);  
  text("change",20,295);
  text("press space to clear screen",20,980);  
  
  
  if ((mouseX>20)&&(mouseX<60)&&(mouseY>20)&&(mouseY<40)) {
    stroke(0);
    strokeWeight(3);
    fill(255, 0, 0);
    p=1;
    if (mousePressed) {
      fill(100, 0, 0);
    }
  } else {
    noStroke();
    fill(255, 0, 0);
  }
  rect(20, 20, 40, 20);

  if ((mouseX>20)&&(mouseX<60)&&(mouseY>60)&&(mouseY<80)) {
    stroke(0);
    strokeWeight(3);
    fill(0, 255, 0);
    p=2;
    if (mousePressed) {
      fill(0, 100, 0);
    }
  } else {
    noStroke();
    fill(0, 255, 0);
  }  
  rect(20, 60, 40, 20);

  if ((mouseX>20)&&(mouseX<60)&&(mouseY>100)&&(mouseY<120)) {
    stroke(0);
    strokeWeight(3);
    fill(0, 0, 255);    
    p=3;
    if (mousePressed) {
      fill(0, 0, 100);
    }
  } else {
    noStroke();
    fill(0, 0, 255);
  }
  rect(20, 100, 40, 20);

  if ((mouseX>20)&&(mouseX<60)&&(mouseY>180)&&(mouseY<200)) {
    stroke(0);
    strokeWeight(3);
    fill(r,g,b); 
    q=1;
    if (mousePressed) {
      fill(r,g,b,100);
    }
  } else {
    noStroke();
    fill(r,g,b);
  }
  rect(20, 180, 40, 20);

  if ((mouseX>20)&&(mouseX<60)&&(mouseY>220)&&(mouseY<240)) {
    stroke(0);
    strokeWeight(3);
    fill(abs(r-255),abs(g-255),abs(b-255));  
    q=2;
    if (mousePressed) {
      fill(abs(r-255),abs(g-255),abs(b-255),100);
    }
  } else {
    noStroke();
    fill(abs(r-255),abs(g-255),abs(b-255));
  }
  rect(20, 220, 40, 20);
  
  if ((mouseX>20)&&(mouseX<60)&&(mouseY>260)&&(mouseY<280)) {
    stroke(0);
    strokeWeight(3);
    fill(255);  
    if (mousePressed) {
      fill(200,100);
      r=abs(r+random(-100,100));
      g=abs(g+random(-100,100));      
      g=abs(g+random(-100,100)); 

    }
  } else {
    noStroke();
    fill(255);
  }
  rect(20, 260, 40, 20);

if(p==1&&q==1&&mousePressed==true){
float sped=abs(mouseX-pmouseX)+abs(mouseY-pmouseY);
cnt=cnt+inc;
if(cnt>25){
inc=-1;}
if(cnt<=0){
inc=1;}
strokeWeight(sped/2);
stroke(r,g,b,30);
line(mouseX,mouseY,pmouseX,pmouseY);
}

if(p==2&&q==1&&mousePressed==true){
float t=map(mouseX,0,width,-10,10);
fill(r,g,b,200);
curveTightness(t);
beginShape();
curveVertex(pmouseX,pmouseY);
curveVertex(pmouseX,pmouseY);
curveVertex(pmouseX+random(-10,10),pmouseY+random(-10,10));
curveVertex(pmouseX+random(-20,20),pmouseY+random(-20,20));
curveVertex(mouseX+random(-10,10),mouseY+random(-10,10));
curveVertex(mouseX+random(-20,20),mouseY+random(-20,20));
curveVertex(mouseX,mouseY);
curveVertex(mouseX,mouseY);
endShape();
}

if(p==3&&q==1&&mousePressed==true){
strokeWeight(1);
stroke(r,g,b,150);
fill(r,g,b,50);
for(int i=0;i<100;i=i+15){
int vertexCount=int(map(i,0,100,40,150));
Rose(mouseX,mouseY,vertexCount,i,i/10);
}}


if(p==1&&q==2&&mousePressed==true){
float sped=abs(mouseX-pmouseX)+abs(mouseY-pmouseY);
cnt=cnt+inc;
if(cnt>25){
inc=-1;}
if(cnt<=0){
inc=1;}
strokeWeight(sped/2);
stroke(abs(r-255),abs(g-255),abs(b-255),30);
line(mouseX,mouseY,pmouseX,pmouseY);
}

if(p==2&&q==2&&mousePressed==true){
float t=map(mouseX,0,width,-10,10);
fill(abs(r-255),abs(g-255),abs(b-255),200);
curveTightness(t);
beginShape();
curveVertex(pmouseX,pmouseY);
curveVertex(pmouseX,pmouseY);
curveVertex(pmouseX+random(-10,10),pmouseY+random(-10,10));
curveVertex(pmouseX+random(-20,20),pmouseY+random(-20,20));
curveVertex(mouseX+random(-10,10),mouseY+random(-10,10));
curveVertex(mouseX+random(-20,20),mouseY+random(-20,20));
curveVertex(mouseX,mouseY);
curveVertex(mouseX,mouseY);
endShape();
}

if(p==3&&q==2&&mousePressed==true){
strokeWeight(1);
stroke(abs(r-255),abs(g-255),abs(b-255),150);
fill(abs(r-255),abs(g-255),abs(b-255),50);
for(int i=0;i<100;i=i+15){
int vertexCount=int(map(i,0,100,40,150));
Rose(mouseX,mouseY,vertexCount,i,i/10);
}}
}


void Rose(int x,int y,int numOfVertex,int br,int rOff){
beginShape();
for(int i=0;i<numOfVertex;i++){
float pingPong=sin(radians(millis()/6.0+20*i));
float r=br+map(pingPong,-1,1,-rOff,rOff);
vertex(x+cos(radians(i*360)/numOfVertex)*r,y+sin(radians(i*360/numOfVertex))*r);
}
endShape(CLOSE);
}
