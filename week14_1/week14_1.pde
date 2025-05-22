//week14-1
//學過了PImage PVector
size(300,300);
textSize(50);
text("Hello",10,50);//預設字型
PFont font=createFont("Times New Roman",50);
textFont(font);//換字型
text("Hello",10,100);
//print(PFont.list());//列出現在可用的字形
for(String name:PFont.list()) println(name);//Java
