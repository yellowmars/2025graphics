//week10-1
size(500,560);
PImage postman=loadImage("postman.png");
PImage head=loadImage("head.png");
PImage body=loadImage("body.png");
background(#FFFFF2);
image(postman,0,0);//全身
fill(255,0,255,128);//半透明紫色
rect(0,0,560,560);//蓋上去
image(head,0,0);//先畫頭
image(body,0,0);//在畫身體
