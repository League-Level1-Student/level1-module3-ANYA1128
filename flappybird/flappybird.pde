int x = 0;
int birdX = 100;
int birdY = 100;
int lowerY = 1000;
int upperY = 0;
int pipeGap = 300;
int pipeWidth = 150;
int birdYVelocity = 0;
int gravity = 1;
int pipeX=700;
int upperPipeHeight = (int) random(100, 400);
int lowerPipeHeight = 1000 - lowerY;
PImage back;
PImage pipeBottom;
PImage pipeTop;
PImage bird;
boolean intersectsPipes() { 
  if (birdY < upperPipeHeight && birdX > pipeX && birdX < (pipeX+pipeWidth)) {
    return true;
  } else if (birdY>lowerY && birdX > pipeX && birdX < (pipeX+pipeWidth)) {
    return true;
  } else { 
    return false;
  }
}

void setup() {
  size(1000, 1000);
  back = loadImage("flappyBackground.png");
  pipeBottom = loadImage("pipeBottom.png");
  pipeBottom.resize(150, lowerPipeHeight);
  pipeTop = loadImage("pipeTop.png");
  pipeTop.resize(150, upperPipeHeight);
  bird = loadImage("birb.png");
  bird.resize(150, 150);
  back.resize(1000, 1000);
}

void draw() {

  background(back);
  image (pipeBottom, pipeX, lowerY);
  image (pipeTop, pipeX, upperY);
  image (bird, birdX, birdY);
  pipeX--;
  text("Score: "+ x, 50, 50);
  birdY+=birdYVelocity;
  birdYVelocity+=gravity;
  teleportPipes();
  lowerY = upperY + upperPipeHeight + pipeGap;
  if (intersectsPipes()==true) {
    println("hit pipe");
    exit();
  }
  if (birdY>1000) {
   println("fell off bottom"); 
    exit();
  }
}


void teleportPipes() {

  if (pipeX<0) {
    upperPipeHeight = (int) random(100, 400);
    lowerPipeHeight = 1000-lowerY;
    pipeX=1000;
    x++;
  }
}

void mousePressed() {
  birdYVelocity=-20;
}