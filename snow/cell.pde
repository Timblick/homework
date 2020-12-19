class cell {
  PVector loc = new PVector();  
  PVector velocity = new PVector ();
  PVector accelerate = new PVector ();  
  float diam;
  boolean seed;
  float r;
  float g;
  float b;
  float lineColor;
  float rad;
  float rr=random(2, 4);

  cell() {
    loc = new PVector(random(1000), random(1000)); 
    noStroke();
    ellipse(loc.x, loc.y, rr, rr);
    ellipse(loc.x+random(-1, 1), loc.y, rr, rr);   
    loc.add(velocity);
    velocity.add(accelerate);
    rad = random(TWO_PI);
    accelerate = new PVector(cos(rad), sin(rad));    
    diam = 50 ;
    seed = false ; 
    r = 255;
    g = 255;
    b = 255;
    lineColor = random(150, 250);
    float dis=dist(mouseX, mouseY, loc.x, loc.y);
    if (dis<1000) {
      velocity.x-=.2*(mouseX-loc.x);
      velocity.y-=.2*(mouseY-loc.y);
      accelerate.x-=.5*(mouseY-loc.x);
      accelerate.x-=.5*(mouseY-loc.y);
      velocity.normalize();
      accelerate.normalize();
    }
  }

  void display() { 
    stroke (lineColor);
    strokeWeight(random(1, 5));
    if (seed == true) { 
      fill(255, 255, 255);
    }  
    if (seed == false) {
      fill(r, g, b);
    }
    fill(255);
    ellipse(loc.x, loc.y, diam, diam);
  }

  void update() {    
    if (seed == false) {
      velocity = new PVector (random(-10, 10), random(-10, 10)); 
      
      loc.add(velocity);
      
    }
  }
}
