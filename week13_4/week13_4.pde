//week13-4
//把貼圖，跟camera整合在一起
PImage img;
void setup(){
  size(400,400,P3D);
  img=loadImage("chessboard.png");
  textureMode(NORMAL);
}
void draw(){
  camera(mouseX,200,mouseY,mouseX,200,mouseY-10,0,1,0);
  background(128);
  beginShape();//正前方Z座標都放0
    texture(img);
    vertex(0,0,0,0);
    vertex(400,0,0,1,0);
    vertex(400,400,0,1,1);
    vertex(0,400,0,0,1);
  endShape();
  beginShape();//左方，X座標都放0
    texture(img);
    vertex(0,0,0,0);
    vertex(0,400,0,1,0);
    vertex(0,400,400,1,1);
    vertex(0,0,400,0,1);
  endShape();
}
