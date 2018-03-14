int plotX;
int plotY;
int x = 1;
int y = 1;

int rad = 60;

int xIncrement = 2;
int yIncrement = 2;

boolean circleClicked = false;

void setup(){
  size(720,450);
  plotX = 100;
  plotY = 100;
  
}

void draw(){
  background(0xFFFFFF);
  
  ellipseMode(RADIUS);
  
  if(circleClicked == true){
    fill(#00FF00);
  }else{
    fill(#0000FF);
  }
  
  findBound();
  
  plotX = plotX + xIncrement ;
  plotY = plotY + yIncrement ;
  
  ellipse(plotX, plotY, rad, rad);
}
void mousePressed(){
  if( mouseX > rad && mouseY > rad ){
    if(circleClicked == true){
      circleClicked = false;
    }else{
      circleClicked = true;
    }
  }
}
void findBound(){
  if(plotX > 720-rad || plotX < rad){
    xIncrement *= -1;
  }
  if(plotY > 450-rad || plotY < rad){
    yIncrement *= -1;
  }
}