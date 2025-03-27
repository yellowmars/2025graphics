//week06-5_push_T_box_push_T_R_T_box_pop_pop
//慢慢組合出機器手臂
void setup(){
  size(500,400,P3D);
}
void draw(){
  background(255);
  translate(width/2,height/2);
  fill(252,131,77);
  sphere(10);
  
  fill(252,131,77); 
  pushMatrix();//step04新的一組
  translate(x,y);//step05新的轉動
  //step03把程式往右縮排
    box(200,50,25);//手肘
    pushMatrix();
      translate(100,0);//step01把前一步發現的100,0放好
      //if(mousePressed)
      rotateZ(radians(frameCount));//step02只轉動
      translate(25,0,0);//往右推，讓左端放中心
      box(50,25,50);//小手腕
      popMatrix();
    popMatrix();
}
float x=0,y=0;
void mouseDragged(){
  x+=mouseX-pmouseX;
  y+=mouseY-pmouseY;
  println("x:"+x+"y:"+y);
}
