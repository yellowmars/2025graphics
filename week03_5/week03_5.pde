//week03-5-mouse-cat
void setup(){
  size(400,400);
}
float x, y;
void draw(){
  background(255);
  ellipse(x,y,40,40);
  ellipse(mouseX,mouseY,40,20);
  x=(x*14 +mouseX)/15;
  y=(y*14 +mouseY)/15;
}//新的座標，舊的座標*14，目標*1
