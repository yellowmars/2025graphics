//week05-6-pushMatrix-popMatrix-
//因為有很多的移動、旋轉，所以用分階層做事
void setup(){
  size(400,400);
}
void draw(){
  background(204);
  
  translate(width/2,height/2);//(把下面這坨)移到畫面中心點
  rotate(radians(frameCount)*10);
  rect(-50,-5,100,10);
  
  //希望在左邊-100的地方也再轉
  
  translate(width/2-100,height/2);//(把下面這坨)移到畫面中心點
  rotate(radians(frameCount)*10);
  rect(-50,-5,100,10);
  
}
