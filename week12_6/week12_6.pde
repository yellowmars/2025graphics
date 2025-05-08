//week12-6
//要有聲音，需要聲音的Libary函式庫
//Sketch-Library-Managed Libraries找sound
//會看到Sound | Provides a simple way to work with audio
//選他，右下角Install下載安裝
//安裝好後會有fie範例 File-Example點開Libraries核心函式庫Sound
//Soundfile那堆範例看SimplePlayback簡單撥放音樂
import processing.sound.*;
SoundFile mySound;
void setup(){
  size(400,400);
  mySound=new SoundFile(this,"music.mp3");
  mySound.play();
}
void draw(){
  
}
