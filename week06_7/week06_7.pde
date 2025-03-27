//week06-7
//慢慢組合出機器手臂
void setup(){
  size(500,800,P3D);//step00:把視窗變長一點
}
void draw(){
  background(255);
  translate(width/2,height/2);
  sphere(10);
  
  fill(252,131,77);
  pushMatrix();
    if(mousePressed&&mouseButton==RIGHT)rotateZ(radians(frameCount));//step03按右鍵旋轉
    if(mousePressed&&mouseButton==RIGHT)rotateZ(radians(frameCount));//step02按右鍵旋轉
    translate(x,y);//step01:要往上抬升到中心
    box(50,200,25);
    pushMatrix();
      translate(0,-100);//step00
        //if(mousePressed)
        rotateZ(radians(frameCount));//step00讓他一直轉
        translate(100,0);
        box(200,50,25);//手肘
        pushMatrix();
          translate(100,0);
          rotateZ(radians(frameCount));
          translate(25,0,0);
          box(50,25,50);//小手腕
        popMatrix();
    popMatrix();
   popMatrix();
}
float x=0,y=0;
void mouseDragged(){
  x+=mouseX-pmouseX;
  y+=mouseY-pmouseY;
  println("x:"+x+"y:"+y);
}
