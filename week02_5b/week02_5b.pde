//week02-5
//要利用資料結構，把歷史軌跡記起來
ArrayList<Integer>x=new ArrayList<Integer>();
ArrayList<Integer>y=new ArrayList<Integer>();
PImage img;
void setup(){
  size(403,299);
  img=loadImage("cute.png");//每次新的檔案都要把圖拉進來
}
void draw(){
  background(img);
  fill(255,200);//半透明色彩 aIpha值是128
  rect(0,0,400,400);//畫超大四邊形，全部蓋住
  //上面是week02-4
  for(int i=1;i<x.size();i++){
      line(x.get(i),y.get(i),x.get(i-1),y.get(i-1));
  }
}
void mouseDragged(){
   x.add(mouseX);
   y.add(mouseY);
}
