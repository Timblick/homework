void setup(){
size(1000,1000);
background(255);
String txt="There are moments in life when you miss someone so much that you just want to pick them from your dreams and hug them for real! Dream what you want to dream;go where you want to go;be what you want to be,because you have only one life and one chance to do all the things you want to do.May you have enough happiness to make you sweet,enough trials to make you strong,enough sorrow to keep you human,enough hope to make you happy? Always put yourself in others’shoes.If you feel that it hurts you,it probably hurts the other person, too.The happiest of people don’t necessarily have the best of everything;they just make the most of everything that comes along their way.Happiness lies for those who cry,those who hurt, those who have searched,and those who have tried,for only they can appreciate the importance of peoplewho have touched their lives.Love begins with a smile,grows with a kiss and ends with a tear.The brightest future will always be based on a forgotten past, you can’t go on well in lifeuntil you let go of your past failures and heartaches.When you were born,you were crying and everyone around you was smiling.Live your life so that when you die,you're the one who is smiling and everyone around you is crying.Please send this message to those people who mean something to you,to those who have touched your life in one way or another,to those who make you smile when you really need it,to those that make you see the brighter side of things when you are really down,to those who you want to let them know that you appreciate their friendship.And if you don’t, don’t worry,nothing bad will happen to you,you will just miss out on the opportunity to brighten someone’s day with this message.";
for(int i=0;i<txt.length();i++){
char c=txt.charAt(i);
textSize(random(20,40));
int m=int(c);
println(m);
fill(m,random(100,200),random(200,255),100);
stroke(0);
noStroke();
createShape();
beginShape();
curveVertex(height/2+random(-50,50),width/2+random(-50,50));
curveVertex(height/2+random(-50,50),width/2+random(-50,50));
curveVertex(height/2+random(-200,200),height/2+random(-200,200));
curveVertex(height/2+random(-200,200),height/2+random(-200,200));
curveVertex(height/2+random(-200,200),height/2+random(-200,200));
curveVertex(height/2+random(-300,300),height/2+random(-300,300));
curveVertex(height/2+random(-300,300),height/2+random(-300,300));
curveVertex(height/2+random(-300,300),height/2+random(-300,300));
curveVertex(height/2+random(-400,400),height/2);
curveVertex(height/2+random(-400,400),height/2);
curveVertex(height/2+random(-400,400),height/2);
curveVertex(height/2,height/2+random(-400,400));
curveVertex(height/2,height/2+random(-400,400));
curveVertex(height/2,height/2+random(-400,400));
curveVertex(height/2+random(-50,50),width/2+random(-50,50));
curveVertex(height/2+random(-50,50),width/2+random(-50,50));
endShape();
fill(0);
text(c,height/2+random(-300,300),height/2+random(-300,300));

}}
