//week08-4-gundam-body-head
//慢慢組合起來
PShape body,head;
void setup(){
  size(400,400,P3D);
  head=loadShape("head.obj");
  body=loadShape("body.obj");
}
void draw(){
  background(255);
  translate(width/2,height/2+100);
  sphere(10);//基準點
  scale(10,-10,10);
  pushMatrix();
    translate(0,21.6);
    rotate(radians(X));
    translate(0,-21.6);//放在小x，y的座標
    //println(x/10,y/10);//印出座標，取代上面的數
    shape(head,0,0);
  popMatrix();
  shape(body,0,0);
}
float x=0,y=0;
void mouseDragged(){
  x+=mouseX-pmouseX;
  y+=mouseY-pmouseY;
}
