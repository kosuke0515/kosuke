float baseH = 20;

float armL1 = 60;
float armL2 = 30;
float armL3 = 30;

float armW1 = 8;
float armW2 = 6;
float armW3 = 4;

float armD1 = 8;
float armD2 = 6;
float armD3 = 4;

float l1 =0;

float angle0 = 0;
float angle1 = 0;
float angle2 = 0;

float dif = 0.8;
float dif1 = 20;
float dif2 = 0.5;

void setup(){
  size(1200, 800, P3D);
 
  camera(200, 200, 200, 0, 0, 100, 0, 0, -1);
  
  noStroke();  
}

void draw(){
  
  background(255);
  
  if(keyPressed){
    if(key == 'a'){
      angle0 = angle0 + dif;
    }
    if(key == 'A'){
      angle0 = angle0 - dif;
    }
    if(key == 's'){
      angle1 = angle1 + dif;
    }
    if(key == 'S'){
      angle1 = angle1 - dif;
    }
    if(key == 'd'){
      angle2 = angle2 - dif1;
    }
    if(key == 'l'){
      l1 = l1 + dif2;
    }
    if(key == 'L'){
      l1 = l1 - dif2;
    }
     if(key == 'e'){
      angle0 = 0;
      angle1 = 0;
      angle2 = 0;
      l1 = 0;
    }
  }
  
  //base
  rotateZ(radians(angle0));
  translate(0,0,baseH);
  fill(100);
  stroke(50);
  box(20,20,baseH);
  
  
  //1st link
  translate(0,0,baseH+l1);
  fill(140);
  stroke(50);
  box(armW1,armD1,armL1+2*l1);
  
 
  //2nd link
  translate(0,0,armL1/2+l1);
  rotateX(radians(angle1));
  translate(0,0,armL2/2);
  fill(180);
  stroke(50);
  box(armW2,armD2,armL2);
  
  
  //3rd link
  translate(0,0,armL2/2-5);
  rotateY(radians(angle2));
  translate(0,armD2,armL2/2);
  fill(130);
  stroke(50);
  box(armW3,armW3,armL3);
  
  
  //掴む所
  translate(0,0,armL3/2);
  fill(200);
  box(10,10,2); 
  
  translate(4,0,4);
  fill(200);
  box(2,10,10);
  
  translate(-4,4,0);
  fill(200);
  box(10,2,10);
  
  translate(0,-8,0);
  fill(200);
  box(10,2,10);
  
  translate(0,4,1.5);
  sphere(3);
  
}
