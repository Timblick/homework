class Particle {
  PVector loc, speed, acc;
  color col;
  float rad;
  float max = 2.5;
  float w = 500.0;
  float h = 500.0;
  float f = 1000.0;
  int t=1;
  Particle(PVector _loc, PVector _speed, PVector _acc) {
    loc   = _loc;
    speed = _speed;
    acc   = _acc;
  }

  Particle() {
    loc = new PVector(random(width)*1.2, random(height)*1.2);
    rad = random(TWO_PI);
    speed = new PVector(0, 0);
    acc = new PVector(cos(rad), sin(rad));
  }

  void run() {
    move();
    checkedges();
    render();
    fillcolor();
    mouse();
  }
  void move() {
    float deg = 360.0*noise(loc.x/w, loc.y/h, millis()/100000.0);
    rad=radians(deg);
    acc.set(cos(rad), sin(rad));

    speed.add(acc);
    if (speed.magSq()>max) {
      speed.normalize();
      speed.mult(max);
    }
    loc.add(speed);
  }

  void checkedges() {
    if (loc.x<0 || loc.x>width) {    
      loc = new PVector(random(width)*1.2, random(height)*1.2);
      speed.x*=-1;
      acc.x*=-1;
    }
    if (loc.y<0 || loc.y>height) {    
      loc = new PVector(random(width)*1.2, random(height)*1.2);
      speed.y*=-1;
      acc.y*=-1;
    }
  }

  void mouse() {
    float dis=dist(mouseX, mouseY, loc.x, loc.y);
    if (dis<1000) {
      speed.x-=.2*(mouseX-loc.x);
      speed.y-=.2*(mouseY-loc.y);
      acc.x-=.5*(mouseY-loc.x);
      acc.x-=.5*(mouseY-loc.y);
    }
  }  

void fillcolor() {
  float dis=dist(mouseX, mouseY, loc.x, loc.y);
  if(dis<100){
fill(random(210+t,218),dis/3,dis/3);
ellipse(loc.x,loc.y,10,10);
}
  if(dis<300&&dis>100){
fill(random(238,242),dis/4,dis/4);
ellipse(loc.x,loc.y,10,10);
}
  if(dis<500&&dis>300){
fill(random(242,245),dis/5,dis/5);
ellipse(loc.x,loc.y,10,10);
}
  if(dis<1000&&dis>500){
fill(random(245,247),dis/5,dis/5);
ellipse(loc.x,loc.y,10,10);
}
} 
  void render() {
    ellipse(loc.x, loc.y, 10, 10);
  }
}
