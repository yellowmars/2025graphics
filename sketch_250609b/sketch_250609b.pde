PShape body, head;
PShape uparm1, upuparm1, hand1;
PShape uparm2, upuparm2, hand2;
PShape foot1, foot2, leg1, leg2, knee1, knee2, hip;
PShape shoulder1, shoulder2, elbow1, elbow2, calf1, calf2;
PImage bg;


float[] angleX = new float[20];
float[] angleY = new float[20];

int ID = 0; // 0:頭 1:上上手臂 2:上手臂 3:手 ...

ArrayList<String> lines = new ArrayList<String>(); // 存每組動作角度
int R = 0; // 播放用的 index

void setup() {
  size(400, 400, P3D);
  bg = loadImage("bg.jpg");
  body = loadShape("body.obj");
  head = loadShape("head.obj");
  uparm1 = loadShape("uparm1.obj");
  upuparm1 = loadShape("upuparm1.obj");
  uparm2 = loadShape("uparm2.obj");
  upuparm2 = loadShape("upuparm2.obj");
  hand1 = loadShape("hand1.obj");
  hand2 = loadShape("hand2.obj");
  foot1 = loadShape("foot1.obj");
foot2 = loadShape("foot2.obj");
leg1 = loadShape("leg1.obj");
leg2 = loadShape("leg2.obj");
knee1 = loadShape("knee1.obj");
knee2 = loadShape("knee2.obj");
hip = loadShape("hip.obj");

shoulder1 = loadShape("shoulder1.obj");
shoulder2 = loadShape("shoulder2.obj");
elbow1 = loadShape("elbow1.obj");
elbow2 = loadShape("elbow2.obj");

calf1 = loadShape("calf1.obj");
calf2 = loadShape("calf2.obj");

}

void draw() {
  background(255);
  image(bg, 0, 0, width, height); 
  translate(200, 300);
  sphere(10);
  scale(10, -10, 10); // Y 軸反轉 
  pushMatrix();
  translate(0, 16.9);
  rotateY(angleX[7]);
  rotateX(angleY[7]);
  translate(0, -16.9);
  shape(body, 0, 0);
  

    pushMatrix();
    translate(0, 22.5);
    rotateY(angleX[0]);
    rotateX(angleY[0]);
    translate(0, -22.5);
    shape(head, 0, 0);
    popMatrix();
  
    // 左手
    pushMatrix();
    translate(-2.9, 20.8);
    rotateY(angleX[1]);
    rotateX(angleY[1]);
    translate(2.9, -20.8);
    shape(upuparm1, 0, 0);
  
    pushMatrix();
    translate(-4.1, 19.9);
    rotateZ(angleY[2]);
    rotateY(angleX[2]);
    translate(4.1, -19.9);
    shape(uparm1, 0, 0);
  
    pushMatrix();
    translate(-4.5, 16.9);
    rotateX(angleY[3]);
    rotateY(angleX[3]);
    translate(4.5, -16.9);
    shape(hand1, 0, 0);
    popMatrix();
  
    popMatrix();
    popMatrix();
  
    // 右手
    pushMatrix();
    translate(2.9, 20.8);
    rotateY(angleX[4]);
    rotateX(angleY[4]);
    translate(-2.9, -20.8);
    shape(upuparm2, 0, 0);
  
    pushMatrix();
    translate(4.1, 19.9);
    rotateZ(angleY[5]);
    rotateY(angleX[5]);
    translate(-4.1, -19.9);
    shape(uparm2, 0, 0);
  
    pushMatrix();
    translate(4.5, 16.9);
    rotateX(angleY[6]);
    rotateY(angleX[6]);
    translate(-4.5, -16.9);
    shape(hand2, 0, 0);
    popMatrix();
  
    popMatrix();
    popMatrix();
    popMatrix();
    // 畫 hip
    pushMatrix();
    translate(0,17.4);
    rotateY(angleX[8]);
    rotateX(angleY[8]);
    translate(0, -17.4);
    shape(hip, 0, 0);
 // 左腳（例如 ID=10～13 控制左腳旋轉）
pushMatrix();
translate(-1.9, 15); // 根據實際接合位置調整
rotateY(angleX[10]);
rotateX(angleY[10]);
translate(1.9,-15);
shape(leg1, 0, 0);

  pushMatrix();
  translate(-1.9, 12.5);
  rotateY(angleX[11]);
  rotateX(angleY[11]);
  translate(1.9,-12.5);
  shape(knee1, 0, 0);

    pushMatrix();
    translate(-1.9,10.8);
    rotateY(angleX[12]);
    rotateX(angleY[12]);
    translate(1.9,-10.8);
    shape(calf1, 0, 0);

      pushMatrix();
      translate(-2,3.3);
      rotateY(angleX[13]);
      rotateX(angleY[13]);
      translate(2,-3.3);
      shape(foot1, 0, 0);
      popMatrix();
    popMatrix();
  popMatrix();
popMatrix();

// 右腳（例如 ID=10～13 控制左腳旋轉）
pushMatrix();
translate(1.9, 15); // 根據實際接合位置調整
rotateY(angleX[14]);
rotateX(angleY[14]);
translate(-1.9,-15);
shape(leg2, 0, 0);

  pushMatrix();
  translate(1.9, 12.5);
  rotateY(angleX[15]);
  rotateX(angleY[15]);
  translate(-1.9,-12.5);
  shape(knee2, 0, 0);

    pushMatrix();
    translate(1.9,10.8);
    rotateY(angleX[16]);
    rotateX(angleY[16]);
    translate(-1.9,-10.8);
    shape(calf2, 0, 0);

      pushMatrix();
      translate(2,3.3);
      rotateY(angleX[17]);
      rotateX(angleY[17]);
translate(-2,-3.3);
      shape(foot2, 0, 0);
      popMatrix();

    popMatrix();
  popMatrix();
popMatrix();
 popMatrix();
}

void mouseDragged() {
  angleX[ID] += radians(mouseX - pmouseX); // 左右拖曳
  angleY[ID] += radians(mouseY - pmouseY); // 上下拖曳
}

void keyPressed() {
  if (key == '0') ID = 0;
  if (key == '1') ID = 1;
  if (key == '2') ID = 2;
  if (key == '3') ID = 3;
  if (key == '4') ID = 4;
  if (key == '5') ID = 5;
  if (key == '6') ID = 6;
  if (key == '7') ID = 7;//身體
  if (key == '8') ID = 8;//腰
  if (key == '9') ID = 9;
  if (key == 'a') ID = 10; // 左大腿
  if (key == 'b') ID = 11; // 左膝蓋
  if (key == 'c') ID = 12; // 左小腿
  if (key == 'd') ID = 13; // 左腳
  if (key == 'e') ID = 14; // 右大腿
  if (key == 'f') ID = 15; // 右膝蓋
  if (key == 'g') ID = 16; // 右小腿
  if (key == 'h') ID = 17; // 右腳


  if (key == 's') { // 存目前角度
    String now = "";
    for (int i = 0; i < 20; i++) {
      now += angleX[i] + " " + angleY[i] + " ";
    }
    lines.add(now);

    String[] arr = new String[lines.size()];
    lines.toArray(arr);
    saveStrings("angles.txt", arr);
  }

  if (key == 'r') { // 播放儲存的角度資料
    if (R == 0) {
      String[] file = loadStrings("angles.txt");
      if (file != null) {
        for (int i = 0; i < file.length; i++) {
          lines.add(file[i]);
        }
      }
    }

    if (R < lines.size()) {
      float[] now = float(split(lines.get(R), ' '));
      for (int i = 0; i < 20; i++) {
        angleX[i] = now[i * 2];
        angleY[i] = now[i * 2 + 1];
      }
      R = (R + 1) % lines.size();
    }
  }
}
