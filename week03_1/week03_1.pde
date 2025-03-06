//week03-01-P3D-trandlate-rotateY-radians-box
void setup(){
    size(400,400,P3D);//開啟3D模式
}
void draw(){
  background(128);//灰色背景
  translate(mouseX,mouseY);
  rotateY(radians(frameCount));
  box(200);//大小200的3D盒子
}
