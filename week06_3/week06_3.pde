//week06-3_push_translate_rotate_translate_box_pop
void setup(){
  size(500,500,P3D);
}
void draw(){
  background(142);
  ellipse(width/2,height/2,200,200);
  translate(width/2,height/2);//把畫面放到中心
  pushMatrix();//第5周教過的matrix保護
  translate(x,y);
  if(mousePressed&&mouseButton==RIGHT){
    rotateZ(radians(frameCount));
  }
  translate(-50,0,0);//把棒子往左移一半，讓右端放在正中心
  box(100,30,30);
  popMatrix();
}
float x=0,y=0;
void mouseDragged(){
  x+=mouseX-pmouseX;
  y+=mouseY-pmouseY;
}
