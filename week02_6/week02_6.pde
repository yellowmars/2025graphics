//week02-6_
//想要有很多段，不要一筆畫
ArrayList<Integer>x,y;//先有兩個還沒準備好的資料結構
ArrayList<ArrayList<Integer>>xx=new ArrayList<ArrayList<Integer>>();
ArrayList<ArrayList<Integer>>yy=new ArrayList<ArrayList<Integer>>();
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
  for(int I=0;I<xx.size();I++){
    ArrayList<Integer>x=xx.get(I);
    ArrayList<Integer>y=yy.get(I);
    for(int i=1;i<x.size();i++){
        line(x.get(i),y.get(i),x.get(i-1),y.get(i-1));
    }
  }
}
void mouseDragged(){
   x.add(mouseX);
   y.add(mouseY);
}
void mousePressed(){
  x=new ArrayList<Integer>();  xx.add(x);
  y=new ArrayList<Integer>();  yy.add(y);
}
