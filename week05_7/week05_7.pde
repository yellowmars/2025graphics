//week05-7-many-pushMatrix-popMatrix
void setup(){
  size(500,500);
}
void draw(){
  background(204);
  for(int x=50;x<500;x+=50){//每個距離100
    for(int y=50;y<500;y+=100){//每個距離100
      pushMatrix();
      translate(x,y);//移到對應的x,y
      rotate(radians(frameCount));
      rect(-50,-5,100,10);
      popMatrix();
    }
  }
}
