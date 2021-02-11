float baseH = 50;
float armL1 = 50;
float armL2 = 50;
float armL3 = 30;
float armL4 = 20;
float armW1 = 10;
float armW2 = 10;
float armW3 = 10;
float armW4 = 10;
float angle1 = 0;
float angle2 = 0;
float angle3 = 0;
float angle4 = 0;
float dif = 1.0;

void setup(){
  size(1200, 800, P3D);
  
  camera(100, 100, 100, 0, 0, 0, 0, 0, -1);
  
  noStroke();  
}

void draw(){
  background(255);
   if(keyPressed){
    if(key == 'p'){
      angle1 = angle1 + dif;
    }
    if(key == 'P'){
      angle1 = angle1 - dif;
    }
    if(key == 'o'){
      if(angle2 <= 215){
      angle2 = angle2 + dif;
      }
    }
    if(key == 'O'){
      if(angle2 >= -35){
      angle2 = angle2 - dif;
      }
    }
    if(key == 'i'){
      angle3 = angle3 + dif;
    }
    if(key == 'I'){
      angle3 = angle3 - dif;
    }
    if(key == 'u'){
      angle4 = angle4 + 3*dif;
    }
    if(key == 'U'){
      angle4 = angle4 - 3*dif;
    }
   }
  
  
  rotateZ(radians(angle1));
  fill(200);
  box(armW1,armW1,baseH);

  translate(-armW1/2-armW2/2,0,baseH/2-armW2/2);
  rotateX(radians(angle2));
  translate(0,armL1/2-armW1/2,0);
  fill(150);
  box(armW2,armL2,armW2);
  
  translate(armW2/2+armW3/2,armL2/2-armW2/2,0);
  rotateX(radians(angle3));
  translate(0,0,-armL3/2+armW2/2);
  fill(100);
  box(armW3,armW3,armL3);
  
  translate(armW3/2,0,-armL3/2+armW3/2);
  rotateX(radians(angle4));
  translate(armL4/2,0,0);
  fill(75);
  box(armL4,armW4,armW4);
}
