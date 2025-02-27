//week02-4_pImage_loadmage_background_fill_println
//新的開始，要描圖
PImage img;
void setup(){
  size(403,299);
  img=loadImage("cute.png");
}
void draw(){
  background(img);
  fill(255,mouseX);//半透明色彩 aIpha值是128
  println(mouseX);//把mouseX的值，在最下面印出
  rect(0,0,400,400);//畫超大四邊形，全部蓋住
}
