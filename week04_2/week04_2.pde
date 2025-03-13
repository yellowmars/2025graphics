//week04-1-atan2-dy-dx-cos-sin
void setup(){
  size(600,300);
}
void draw(){
  background(#C0FFEE); //粉清咖啡 ，是零不是o
  for(int x=150;x<=450;x+=300){
    ellipse(x,150,100,100);//眼睛
    //ellipse(150+25,150,50,50);
    float dx=mouseX-x,dy=mouseY-150;
    float a=atan2(dy,dx);//算出角度
    ellipse(x+cos(a)*25, 150+sin(a)*25,50,50);
  }
}
