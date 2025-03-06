//week03-12-sphere-translate-rotateY
void setup(){
  size(400,400,P3D);
}
void draw(){
  background(128);
   lights();//加上打光
  translate(mouseX,mouseY);
  rotateY(radians(frameCount));
  sphere(200);
}
