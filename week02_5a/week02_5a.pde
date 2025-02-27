//week02-5a_combine__02_4_and_20_3
//要描圖，卻出錯
PImage img;
void setup(){
  size(403,299);
  img=loadImage("cute.png");
}
void draw(){
  background(img);
  fill(255,200);//半透明色彩 aIpha值是128
  rect(0,0,400,400);//畫超大四邊形，全部蓋住
 //上面是week02-4，下面是week02-5但邊線卻無法寫上
  stroke(255,0,0);
  if(mousePressed) line(mouseX,mouseY,pmouseX,pmouseY);
}
