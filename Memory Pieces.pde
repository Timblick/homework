int squareNum=20*20; //单个元素尺寸

void setup(){
  size(800,800);//画布大小
  stroke(0);
 //noLoop();//这里可以选择动态或静态模式
 frameRate(3);//刷新速率调整
}

void draw(){
  background(HSB,mouseX);
  rect(0,0,width-1,height-1);
  for(int i=0;i<width/40;i++){
    for(int j=0;j<height/40;j++){
      Square newSquare=new Square(40*i,40*j,40);
      newSquare.display();//遍历循环400个小格子
    }
  }
}

class Square{//对每个小格子进行编辑
  int x,y;
  int l;
float r;
float a;  
  Square(int x,int y,int l){
    this.x=x;
    this.y=y;
    this.l=l;
a=random(0,1);//设置一个在0~1之间的随机数
  }
  
  void display(){
   if(0<a&&a<0.15){//随机数在0~0.15区间，绘制斜线
    stroke(0);
    strokeWeight(4);
    line(x+abs(int(r)-1)*l,y,x+int(r)*l,y+l);}
   if(0.15<a&&a<0.25){//随机数在0.15~0.25之间，绘制四分之一圆弧
    stroke(0);
    strokeWeight(4);
arc(x+abs(int(r)-1)*l, y, 40, 40,PI*-0.5,0);
}
   if(0.25<a&&a<0.5) {//随机数在0.25~0.5之间，绘制四分之三圆弧
   stroke(0);
   strokeWeight(4);
   fill(random(255),random(255),random(255));
   arc(x+abs(int(r)-1)*l, y, 40, 40, 0, PI*1.5);
   }
   if(0.5<a&&a<0.6){//随机数在0.5~0.6之间，绘制菱形
   stroke(0);
   strokeWeight(4);
   fill(random(255),random(255),random(255));
   rect(x+abs(int(r)-1)*1,y,40,40);
   }
   if(0.6<a&&a<0.75){//随机数在0.6~0.75之间，绘制正方形
   stroke(0);
   strokeWeight(4);
   fill(random(255),random(255),random(255));
   quad(x+abs(int(r)-1)*1+20,y,x+abs(int(r)-1)*1+40,y+20,x+abs(int(r)-1)*1+20,y+40,x+abs(int(r)-1)*1,y+20);
   }   
   if(0.75<a&&a<1){//随机数在0.75~1之间，绘制四分之一圆弧
   stroke(0);
   strokeWeight(4);
   fill(random(255),random(255),random(255));
   arc(x+abs(int(r)-1)*l, y, 40, 40,PI*0.5,PI*1);
   }
 }
}
