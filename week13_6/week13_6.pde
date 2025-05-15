//week13-6
//把今天教的全部加進來
import processing.video.*;
Movie movie;
PImage img;
void setup(){
  size(400,400,P3D);
  movie=new Movie(this,"street.mov");
  movie.loop();
  img=loadImage("chessboard.png");
  textureMode(NORMAL);
  //video=new Capture(this,640,480);
  //video start();
}
//Capture video;//有鏡頭在加
void draw(){
  background(128);
  camera(200,200,200,200+cos(radians(frameCount)),200,200+sin(radians(frameCount)),0,1,0);
  if(movie.available())movie.read();
  beginShape();//正前方的牆
    texture(img);
    vertex(0,0,0,0);
    vertex(400,0,0,1,0);
    vertex(400,400,0,1,1);
    vertex(0,400,0,0,1);
  endShape();
  translate(0,0,1);
  image(movie,0,0,360,240);
  //if(video.available() video.read();
  beginShape();//左方的牆放視訊
    //texture(video);
    /*vertex(0,0,0,0);
    vertex(0,400,0,1,0);
    vertex(0,400,400,1,1);
    vertex(0,0,400,0,1);
  endShape();*/
}
