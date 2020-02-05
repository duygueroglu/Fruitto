PImage playerImage;
PImage bg;
Player player;

void setup() {
  size(1200, 800);
  bg= loadImage("C:/Users/edibe/Desktop/Fruitto/res/bg1.png");
  playerImage  = loadImage("C:/Users/edibe/Desktop/Fruitto/res/player.png");
  player = new Player(playerImage, width/2-playerImage.width/2,height-playerImage.height,10);
}
void draw() 
{
  background(#358574);
  wrap(bg,-800,-650,width,height);
  player.render();
  player.update();
}

void wrap(PImage img, float x1, float y1, float x2, float y2)
{
  for(float x=x1; x<x2; x+=img.width)
  { 
    for(float y=y1; y<y2; y+=img.height)
    {
    image(img, x,y);
    }
  }
}

boolean[] keys=new boolean[2] ;


void keyPressed()
{
  if(keyCode==LEFT) keys[0]=true;
  if(keyCode==RIGHT) keys[1]=true;
  
}
void keyReleased()
{
  if(keyCode==LEFT) keys[0]=false;
  if(keyCode==RIGHT) keys[1]=false;
}
