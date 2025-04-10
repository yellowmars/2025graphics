//week08-1-loadShape-Shape
size(400,400,P3D);//要有P3D的OpenGL 3D功能
PShape gundam=loadShape("Gundam.obj");//讀入3D模型
translate(width/2,height/2);//放到畫面中心
pushMatrix();//備分矩陣
translate(0,100);//下一移
scale(10,-10,10);//把模型放大
shape(gundam,0,0);//畫出3D模型
popMatrix();//還原矩陣
