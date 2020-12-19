cell[] mycells = new cell[10000]; 
float col1=0;
float col2=0;
float col3=0;
float p=random(-10, 10);
float mousex=0.5;
void setup() {
  textSize(20);
  background(0, 0, 0, 250);
  size(1000, 1000);
  for (int i =0; i<mycells.length; i++) {
    mycells[i] = new cell();
    { 
      map(mousex, 0, width, 5, 10);
      if (i<10)
        mycells[i].seed = true;
    }
  }
}

void draw() {
  noStroke();
  fill(255);
  rect(0, 0, 200, 60);

  fill(0);
  text("framerate:", 5, 20);
  text(frameRate, 105, 20); 
  text("probablity:", 5, 40);
  text(mousex, 105, 40); 
  strokeWeight(random(2, 5));

  colorMode(HSB);
  stroke(col1, 255, 255);

  col1=col1+3; 
  for (int i=0; i<mycells.length; i++)
    mycells[i]. update(); 
  for (int i=0; i<mycells.length; i++) {   

    if (mycells[i].seed == false) {

      for (int j=0; j<mycells.length; j++) {

        if (mycells[j].seed == true) {
          float d;
          d = PVector.dist(mycells[i].loc, mycells [j].loc);
          if (d<10&&random(1)<mousex) {  
            mycells[i].seed = true;
            line(mycells[i].loc.x, mycells[i].loc.y, mycells[j].loc.x, mycells[j].loc.y);
          }
        }
      }
    }
  }  
  saveFrame();
}

void mousePressed() {    
  if (mouseButton==LEFT&&mousex>=0) {
    mousex-=0.05;
  }
  if (mouseButton==RIGHT&&mousex<=1) {
    mousex+=0.05;
  }
  loop();
  println(mousex);
}
