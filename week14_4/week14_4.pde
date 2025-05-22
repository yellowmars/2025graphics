//week14-4
//用簡單的線段，來解真的ID的運算
void setup(){
  size(400,400);
  for(int i=0;i<6;i++){
    p[i]=new PVector(200,350-50*i);
  }
}
PVector[]p= new PVector[6];
void draw(){
   background(255);
   for(int i=0;i<6;i++){
     if(i>0) line(p[i-1].x,p[i-1].y,p[i].x,p[i].y);
     fill(255,0,0);
     ellipse(p[i].x,p[i].y,8,8);
     fill(0);
     text("point"+i,p[i].x+10,p[i].y);
   }
   ellipse(mouseX,mouseY,6,6);
   line(p[0].x,p[0].y,mouseX,mouseY);
}
