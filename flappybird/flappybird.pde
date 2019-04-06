int x = 0;
int birdX = 200;
int birdY = 200;
int lowerY = 900;
int upperY = 100;
int pipeGap = 300;
int pipeWidth = 150;
int birdYVelocity = 0;
int gravity = 1;
int pipeX=1000;
int upperPipeHeight = (int) random(100, 400);
int lowerPipeHeight = (int) random(100, 400);
PImage back;
     PImage pipeBottom;
     PImage pipeTop;
     PImage bird;
boolean intersectsPipes() { 
     if (birdY < upperPipeHeight && birdX > pipeX && birdX < (pipeX+pipeWidth)){
          return true; }
     else if (birdY>lowerY && birdX > pipeX && birdX < (pipeX+pipeWidth)) {
          return true; }
     else { return false; }
}

void setup() {
  size(1000, 1000);
  back = loadImage("flappyBackground.png");
            pipeBottom = loadImage("pipeBottom.png");
            pipeTop = loadImage("pipeTop.png");
            bird = loadImage("bird.jpg");
            bird.resize(50,50);
            back.resize(1000,1000);
}

 void draw() {
  text("Score: "+ x, 50, 50);
  background(back);
            image (pipeBottom,250,375);
            image (pipeTop,250,-130);
            image (bird, 250, 300);
  birdY+=birdYVelocity;
  birdYVelocity+=gravity;
  teleportPipes();
  lowerY = upperY + upperPipeHeight + pipeGap;
  if(intersectsPipes()==true){
    exit();
  }
  if(birdY>1000){
    exit();
  }
 
}


void teleportPipes() {

  if (pipeX<0) {
    upperPipeHeight = (int) random(100, 400);
    lowerPipeHeight = (int) random(100, 400);
    pipeX=1000;
    x++;
  }
}

void mousePressed() {
  birdYVelocity=-20;
}