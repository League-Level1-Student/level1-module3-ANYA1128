int x = 200;
int y = 200;
int birdYVelocity = 0;
int gravity = 1;
int pipeX=1000;
int pipeXX=1000;
int upperPipeHeight = (int) random(100,400);
int lowerPipeHeight = (int) random(100,400);

void draw(){
background(0, 0, 0);
fill(0, 180, 0);
stroke(0,250,0);
rect(pipeX--, 0, 150, upperPipeHeight);
fill(0, 180, 0);
stroke(0,250,0);
rect(pipeXX--, 1000, 150,lowerPipeHeight);
fill(255, 0, 0);
stroke(255, 0, 0);
ellipse(x, y, 100, 100);
y+=birdYVelocity;
birdYVelocity+=gravity;

}
void teleportPipes(){
if(pipeX==0){
pipeX=1000;
}
if(pipeXX==0){
pipeXX=1000;
}
}

void mousePressed(){
birdYVelocity=-20;
}

void setup(){
size(1000,1000);
}