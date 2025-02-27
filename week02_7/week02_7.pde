//week02-7
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
void keyPressed(){//小心輸入法
  if(key=='s'|| key=='S'){
    for(int I=0;I<xx.size();I++){
      ArrayList<Integer>x=xx.get(I);//取出裡面最小的資料結構
      ArrayList<Integer>y=yy.get(I);
      println("beginShape();");
      for(int i=1;i<x.size();i++){//小的，在照舊畫
        println("vertex("+x.get(i)+","+y.get(i)+");");
    }//改在keyPressed()按下s或S時，在全部印出
    println("endShape();");
   }
  }
}
void mouseDragged(){
  //println("vertex("+mouseX+","+mouseY+");");不再這裡印
   x.add(mouseX);
   y.add(mouseY);
}
void mousePressed(){//滑鼠按下去時，建新的資料結構
  x=new ArrayList<Integer>();  xx.add(x);
  y=new ArrayList<Integer>();  yy.add(y);
}
