Particle [] hao = new Particle[3000];
OddballParticle MHT = new OddballParticle();
void setup(){
  size(800,800);
  for(int i = 0; i < hao.length; i++){
    hao[i] = new Particle();
  }
}
void draw(){
  background(0,0,0);
  for(int i = 0; i < hao.length; i++){
    hao[i].move();
    hao[i].show();
  }
  MHT.moveOld();
  MHT.showOld();
}
void mouseClicked(){
  for(int i = 0; i < hao.length; i++){
    hao[i] = new Particle();
  }
  MHT = new OddballParticle();
}

class Particle {
  float myX, myY, mySize, mySpeed, myAngle;
  Particle(){
    myX = 400;
    myY = 400;
    mySize = 5;
    mySpeed = (float)(Math.random()*15)+1;
    myAngle = (float)(Math.random()*2*Math.PI);
  }
  void move() {
    myX = myX + (float)(Math.cos(myAngle)*mySpeed);
    myY = myY + (float)(Math.sin(myAngle)*mySpeed);
  }
  void show() {
    fill(255,255,255);
    ellipse(myX,myY,mySize,mySize);
  }
}
class OddballParticle extends Particle {
  OddballParticle(){
    myX = 0;
    myY = (int)(Math.random()*500);
    mySize = 5;
    mySpeed = (float)(Math.random()*10)+1;
  }
  void showOld(){
    fill(255,105,180);
    ellipse(myX,myY,mySize+20,mySize+20);
  }
  void moveOld() {
    myX = myX + (int)(Math.random()*10);
    myY = myY + (int)(Math.random()*10);
  }
}

