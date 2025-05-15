//week13-1
//sketch-library-Manage Libaries...安裝video
import processing.video.*;//Java使用外掛的匯入
//有視訊鏡頭的
Capture video;
Movie movie;//沒鏡頭
void setup(){
  size(640,480);
  //video=new Capture(this,640,480);
  //video.start();//開視訊
  movie=new Movie(this,"street.mov");//讀檔案
  movie.loop();
}
void draw(){
  //if(video.available()) video.read();
   //image(video,0,0);
   if(movie.available()) movie.read();
   image(movie,0,0);
}  
