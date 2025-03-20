//week05-3
//degrees vs radians 結合 week04-1和 week05-2
void setup(){
  size(400,400);
}
void draw(){
  background(128);
  line(200,200,400,200);
  line(200,200,mouseX,mouseY);
  float dx=mouseX-200,dy=mouseY-200;
  float a= atan2(dy,dx);//三角函數，可找到arc弧的radians
  //atan2()出來的值，介於-pI....+pI中間
  arc(200,200,200,200,0,a,PIE);//把算出來的arc radians拿來用
  textSize(30);
  text("radians:"+a,100,100);//radians弧度/弳度
  text("degrees:"+degrees(a),100,130);//degrees 度
}
