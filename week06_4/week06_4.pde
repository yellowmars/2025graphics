//week06-4_sphere_box_push_T_R_T_box_pop
//慢慢組合出機器手臂
void setup(){
  size(500,400,P3D);
}
void draw(){
  background(255);
  translate(width/2,height/2);
  sphere(10);//step04
  box(200,50,25);//step05手肘
  fill(252,131,77);
  pushMatrix();//step03
  translate(x,y);//step06 發現放100,0的地方
  if(mousePressed)rotateZ(radians(frameCount));
  translate(25,0,0);//step02 往右推，讓左端放中心
  box(50,25,50);//step01 小手腕
  popMatrix();
}
float x=0,y=0;//step06
void mouseDragged(){
  x+=mouseX-pmouseX;
  y+=mouseY-pmouseY;
  println("x:"+x+"y:"+y);//step07印出來
}
