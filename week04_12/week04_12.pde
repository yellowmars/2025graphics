//week04-12 moon
PShape earth;
void setup(){
  size(400,400,P3D);
  earth=createShape(SPHERE,100);
  PImage img=loadImage("moon.jpg");
  earth.setTexture(img);
}
void draw(){
  background(0);
  translate(width/2,height/2);
  rotateY(radians(frameCount));
  shape(earth);
}
