int hopDistance;
int xPosition=10;
int yPosition=560;
Car car = new Car(300,100,50,1);
Car poo = new Car(500,200,50,4);
Car wow = new Car(10,300,50,3);
Car yay = new Car(400,400,50,5);

void draw() {
background(30,30,30);
fill(#3B9B58);
ellipse(xPosition,yPosition,80,80);
keepFrogger();
car.display();
poo.display();
wow.display();
yay.display();
car.keepCarLeft();
poo.keepCarRight();
wow.keepCarLeft();
yay.keepCarRight();
}
void setup() {
size(800, 600);
}
void keyPressed()
{
      if(key == CODED){
            if(keyCode == UP)
            {
                  yPosition-=4;
            }
            else if(keyCode == DOWN)
            {
                  yPosition+=4; 
            }
            else if(keyCode == RIGHT)
            {
                  xPosition+=4;
            }
            else if(keyCode == LEFT)
            {
                  xPosition-=4;
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
boolean intersects(Car car) {
      if ((yPosition > car.getY() && yPosition < car.getY()+50) && (xPosition > car.getX() && xPosition < car.getX()+car.getSize()))
      {
             return true;
      }
      else 
      {
             return false;
      }
}
void getX(){
}
void getY(){
}
void getSize(){
}
}