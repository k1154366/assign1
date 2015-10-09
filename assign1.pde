PImage bg1;
PImage bg2;
PImage fighter;
PImage enemy;
PImage hp;
PImage treasure;
int TX,TY;
int EX,EY;
int hpX;
int bg1x,bg2x;

void setup () {
  size(640,480) ;  
  bg1=loadImage("img/bg1.png");
  bg2=loadImage("img/bg2.png");
  fighter=loadImage("img/fighter.png");
  enemy=loadImage("img/enemy.png");
  hp=loadImage("img/hp.png");
  treasure=loadImage("img/treasure.png");
  
  bg1x=0;
  
  image(fighter,570,240);
  image(hp,20,20);
// treasure
  TX=floor(random(640));
  TY=floor(random(440));
//enemy
  EX=floor(random(640));
  EY=floor(random(480));
//HP
  hpX=floor(random(200));
}
void draw() {
  bg1x=bg1x+2;
  bg1x=bg1x%640;
  bg2x=bg1x-640;
  image(bg1,bg1x,0);
  image(bg2,bg2x,0);
  
  image(fighter,570,240);
  
  rect(25,23,hpX,20);
  fill(#ff0000);
  image(hp,20,20);
  
  image(treasure,TX,TY);
  
  EX=EX+5;
  EX=EX%640;
  image(enemy,EX,EY);

}
