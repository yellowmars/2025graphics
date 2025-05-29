//week15-3
//修改自week15-2
PGraphics pg1,pg2,pg3,pg4;
void setup(){
  size(400,400,P3D);//主視窗
  pg1=createGraphics(200,200,P3D);//有一個小的
  pg2=createGraphics(200,200,P3D);//有一個小的
  pg3=createGraphics(200,200,P3D);//有一個小的
  pg4=createGraphics(200,200,P3D);//有一個小的
}
void draw(){
   background(255,0,0);//紅色大背景
   pg1.beginDraw();
   pg1.background(0,255,0);//綠色小背景
   pg1.translate(100,100);
   pg1.rotateY(radians(frameCount));
   pg1.box(100);
   pg1.endDraw();
   
   pg2.beginDraw();
   pg2.background(255,255,0);//綠色小背景
   pg2.translate(100,100);
   pg2.rotateY(radians(frameCount));
   pg2.box(100);
   pg2.endDraw();
   
   pg3.beginDraw();
   pg3.background(0,255,255);//綠色小背景
   pg3.translate(100,100);
   pg3.rotateY(radians(frameCount));
   pg3.box(100);
   pg3.endDraw();
   
   pg4.beginDraw();
   pg4.background(255,0,255);//綠色小背景
   pg4.translate(100,100);
   pg4.rotateY(radians(frameCount));
   pg4.box(100);
   pg4.endDraw();
   
   image(pg1,0,0);
   image(pg2,200,0);
   image(pg3,0,200);
   image(pg4,200,200);
}
