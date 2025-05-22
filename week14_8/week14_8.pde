//week14-8
//用簡單的線段，來解真的ID的運算
void setup(){
  size(400,400);
  for(int i=0;i<N;i++){
    p[i]=new PVector(200,350-L*i);
  }
}
int N=20,L=300/N;
PVector[]p= new PVector[N];
void draw(){
   background(255);
   for(int i=0;i<N;i++){
     if(i>0) line(p[i-1].x,p[i-1].y,p[i].x,p[i].y);
     fill(255,0,0);
     ellipse(p[i].x,p[i].y,8,8);
     fill(0);
     text("point"+i,p[i].x+10,p[i].y);
   }
   p[N-1].x=mouseX;
   p[N-1].y=mouseY;
   for(int i=N-2;i>0;i--){
     PVector v=PVector.sub(p[i+1],p[i]).normalize().mult(L);//短向量
     //因為長度限制為50所以常向量先變成正規化
     p[i].x=p[i+1].x-v.x;//新的位置，是中心，再加上長度50的這小段
     p[i].y=p[i+1].y-v.y;//新的位置，是中心，再加上長度50的這小段
     
   }
   for(int i=1;i<N;i++){
     PVector v=PVector.sub(p[i],p[i-1]).normalize().mult(L);
     p[i].x=p[i-1].x+v.x;
     p[i].y=p[i-1].y+v.y;
   }
     ellipse(mouseX,mouseY,6,6);//滑鼠也有一個小點
     //line(p[4].x,p[4].y,mouseX,mouseY);
}
