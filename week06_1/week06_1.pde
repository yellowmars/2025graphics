//week06-1
//有點模仿地4周的程式
void setup(){
  size(500,500,P3D);
}
void draw(){
  background(142);
  ellipse(width/2,height/2,200,200);
  translate(width/2,height/2);//把畫面放到中心
  pushMatrix();//第5周教過的matrix保護
  if(mousePressed)rotateZ(radians(frameCount));
  //rotate(radians(frameCount));//對著下面中心旋轉
  box(100,30,30);
  popMatrix();
}
