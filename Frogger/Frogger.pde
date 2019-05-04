int hopDistance;
int xPosition=300;
int yPosition=530;
PImage back;

PImage frog;
Car car = new Car(300,100,50,1);
Car poo = new Car(500,200,50,4);
Car wow = new Car(10,260,50,3);
Car yay = new Car(400,450,50,5);
void setup() {
size(844,600);
            back = loadImage("froggerBackground.png");
            frog = loadImage("frog.png");
}
void draw() {
back.resize(844,600);
  background(back);
  frog.resize(75,75);
  image(frog,xPosition,yPosition);
           
keepFrogger();
car.display();
poo.display();
wow.display();
yay.display();
car.keepCarLeft();
poo.keepCarRight();
wow.keepCarLeft();
yay.keepCarRight();
if(car.intersects(car)==true){
  xPosition=300;
  yPosition=530;
}
if(car.intersects(poo)==true){
  xPosition=300;
  yPosition=530;
}
if(car.intersects(wow)==true){
  xPosition=300;
  yPosition=530;
}
if(car.intersects(yay)==true){
  xPosition=300;
  yPosition=530;
}
}

void keyPressed()
{
      if(key == CODED){
            if(keyCode == UP)
            {
                  yPosition-=10;
            }
            else if(keyCode == DOWN)
            {
                  yPosition+=10; 
            }
            else if(keyCode == RIGHT)
            {
                  xPosition+=10;
            }
            else if(keyCode == LEFT)
            {
                  xPosition-=10;
            }
      }
}
void keepFrogger(){
  if(yPosition>600){
    yPosition=590;
}
if(yPosition<0){
  yPosition=10;
}
if(xPosition>800){
  xPosition=790;
}
if(xPosition<0){
  xPosition=10;
}
}
class Car{
 int carX;
 int carY;
 int carSize;
 int carSpeed;   
 Car(int carX,int carY, int carSize, int carSpeed){
this.carX=carX;
this.carY=carY;
this.carSize=carSize;
this.carSpeed=carSpeed;
 }
 void display() 
{
      fill(0,0,200);
      rect(carX, carY, carSize+carSize, carSize);
      
}
void keepCarLeft(){
 carX-=carSpeed;
  if(carX<0){
   carX=800;
 }
}
void keepCarRight(){
 carX+=carSpeed;
  if(carX>800){
   carX=0;
 }
}

int getX(){
return carX;
}
int getY(){
  return carY;
}
int getSize(){
  return carSize;
}
boolean intersects(Car car) {
      if ((yPosition > car.getY()-50&& yPosition < car.getY()+50) && (xPosition > car.getX()-50 && xPosition < car.getX()+car.getSize()))
      {
             return true;
      }
      else {
        return false;
      }
}
}