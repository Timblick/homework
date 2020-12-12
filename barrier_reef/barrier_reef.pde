int num = 1000;
int a=50;
Particle[] particles = new Particle[num];
void setup() {
  size(1000, 1000);
  noStroke();
  for (int i=0; i<num; i++) {
    PVector loc = new PVector(random(width)*1.2,random(height)*1.2);
    float rad = random(TWO_PI);
    PVector speed = new PVector(0, 0);
    PVector acc = new PVector(cos(rad), sin(rad));
    particles[i]= new Particle(loc, speed, acc);
  }
}

void draw() {
  fill(0, 10);
  noStroke();
  rect(0, 0, width, height);
  fill(255, 155);  
  for (int i=0; i<particles.length; i++) {
    particles[i].run();
 }
 
}
