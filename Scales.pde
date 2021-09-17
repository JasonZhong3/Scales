
void setup() {
  size(750, 750);  //feel free to change the size
  background(0,0,0);
  noLoop(); //stops the draw() function from repeating
}
void draw() {
  for(int x = 10; x < 1000; x+=75){
    for(int y = 10; y < 1000; y+=75){
      scale(x,y);
    }
  }
}

void scale(int x, int y) {
  if(Math.random() > 0.5)
    fill(255,150,0);
  else
  fill(205,0,0);
  rect(x,y,100,100,30);
  int diam = 0;
  float r = (int)(Math.random() *225);
  float a = (int)(Math.random() *225);
  noFill();
  while(diam < 60){
    stroke(10,r,a);
    ellipse(x+50,y+50,diam,diam);
    diam++;
    r-=255/50.0;
  }
}
