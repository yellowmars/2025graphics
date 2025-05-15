//week13-2
//電腦圖學會圖時，會設定camera的相關係數
import processing.video.*;
Movie movie;
void setup(){
   size(720,480,P3D);
   movie=new Movie(this,"street.mov");
   movie.loop();//迴圈播放
}
void draw(){
  background(128);
  camera(mouseX,mouseY,500,360,240,0,0,1,0);
  //           影片的中心點當成現在的主角
  if(movie.available())movie.read();
  image(movie,0,0);
}
