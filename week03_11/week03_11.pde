//week03-11-sphere-translate-rotateY
void setup(){
  size(400,400,P3D);
}
void draw(){
  background(128);
  translate(mouseX,mouseY);
  rotateY(radians(frameCount));
  sphere(200);
}
 
