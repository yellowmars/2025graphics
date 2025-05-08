//week12-1
//修改至week09-2-gundam-head-hand
//再加上week09-5
//加上float[] angleX=new float[10];
//加上float[] angleY=new float[10];
PShape body,head;
PShape uparm1,upuparm1,hand1;
void setup(){
  size(400,400,P3D);
  body=loadShape("body.obj");
  head=loadShape("head.obj");
  uparm1=loadShape("uparm1.obj");
  upuparm1=loadShape("upuparm1.obj");
  hand1=loadShape("hand1.obj");
}
float[]angleX=new float[10];
float[]angleY=new float[10];
int ID=0;//0:頭 1:上上手臂 2:上手臂 3:手
void mouseDragged(){
   angleX[ID]+=radians(mouseX-pmouseX);//左右拖曳
   angleY[ID]+=radians(mouseY-pmouseY);//上下拖曳
}
void draw(){
  background(204);
  translate(200,300);
  sphere(10);//原點
  
  scale(10,-10,10);//y要上下再反過來一次
  shape(body,0,0);
  pushMatrix();
    translate(0,22.5);
    rotateY(angleX[0]);//x方向 左右拖曳，對Y軸轉
    rotateX(angleY[0]);//Y方向 上下拖曳，對X軸旋轉
    translate(0,-22.5);
    shape(head,0,0);
  popMatrix();
 
  pushMatrix();
  shape(upuparm1,0,0);
  pushMatrix();
    translate(-4.1,19.9);
    //rotateZ(radians(mouseX));
    rotateZ(angleY[2]);
    rotateY(angleX[2]);
    translate(4.1,-19.9);
    shape(uparm1,0,0);
    pushMatrix();
      translate(-4.5,16.9);
      //rotateX(radians(mouseY));
      rotateX(angleY[3]);
      rotateY(angleX[3]);
      translate(4.5,-16.9);
      //translate(mouseX/10.0,-mouseY/10.0);//一邊移動壁邊找數值
     //println(mouseX/10.0,-mouseY/10.0);//4.1-19.9
      shape(hand1,0,0);
    popMatrix();
  popMatrix();
 popMatrix();
}
