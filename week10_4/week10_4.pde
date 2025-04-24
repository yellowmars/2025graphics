//week10-3-many angle_ID
PImage postman,head,body,arm1,arm2,hand1,hand2,lag1,lag2;
float[]angle=new float[20];
int ID=0;//現在要處理的關節ID(第幾關節)
void mouseDragged(){
  angle[ID]+=mouseX-pmouseX;
}
void keyPressed(){
  if(key=='1') ID=1;//head
  if(key=='2') ID=2;//arm1
  if(key=='3') ID=3;//arm2
  if(key=='4') ID=4;//hand1
  if(key=='5') ID=5;//hand2
  if(key=='6') ID=6;//lag1
  if(key=='7') ID=7;//lag2
}
void setup(){
  size(560,560);
  postman=loadImage("postman.png");
  head=loadImage("head.png");
  body=loadImage("body.png");
  arm1=loadImage("arm1.png");
  arm2=loadImage("arm2.png");
  hand1=loadImage("hand1.png");
  hand2=loadImage("hand2.png");
  lag1=loadImage("lag1.png");
  lag2=loadImage("lag2.png");
}
void draw(){
  background(#FFFFF2);
  image(postman,0,0);//全身
  fill(255,0,255,128);//半透明紫色
  rect(0,0,560,560);//蓋上去
   pushMatrix();
    translate(113,192);
    rotate(radians(angle[2]));
    translate(-113,-192);  
    image(arm1,0,0);
  popMatrix();
  pushMatrix();
    translate(168,192);
    rotate(radians(angle[3]));
    translate(-168,-192);  
    image(arm2,0,0);
  popMatrix();
  pushMatrix();
    translate(67,191);
    rotate(radians(angle[4]));
    translate(-67,-191);  
    image(hand1,0,0);
  popMatrix();
  pushMatrix();
    translate(208,189);
    rotate(radians(angle[5]));
    translate(-208,-189);  
    image(hand2,0,0);
  popMatrix();  
  pushMatrix();
    translate(112,182);
    rotate(radians(angle[1]));
    translate(-112,-182);  
    image(head,0,0);//先畫頭
  popMatrix();
   pushMatrix();
    translate(133,273);
    rotate(radians(angle[6]));
    translate(-133,-273);  
    image(lag1,0,0);
  popMatrix();
   pushMatrix();
    translate(152,273);
    rotate(radians(angle[7]));
    translate(-152,-273);  
    image(lag2,0,0);
  popMatrix();
    image(body,0,0);//在畫身體   
}
