//week02-3
void setup(){ //一開始，設定1次
  size(400,400);
  background(255);
  fill(238);
  noStroke();
  float s=400/14;//計算每格的大小
  for(int i=0;i<14;i++){//左手i 對應y座標
      for(int j=0;j<14;j++){//右手j 對應x座標
        //rect(0,s*i*2,s,s);//試試位置
        if((i+j)%2==0) rect(j*s,i*s,s,s);
      }//完成畫格子
  }
}

void draw(){//每秒60次
stroke(255,0,0);//紅色線
if(mousePressed) line(mouseX,mouseY,pmouseX,pmouseY); 
}//如果滑鼠按下，就畫線，給兩個坐標點:線在mouse和之前的mouse
