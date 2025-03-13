//week40-5a-rotateZ-translate-box
void setup(){
  size(400,400,P3D);
}
void draw(){
  background(128);
  translate(width/2,height/2);//移到畫面中央
  //以下2行，分別註解，排列觀察
  rotateZ(radians(frameCount));//對z軸旋轉
  translate(0,-50);//把下端，移到中心
  box(10,100,10);//可轉動的長條  
}
