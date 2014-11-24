float px, py, px2, py2;
float angle, angle2;
float radius = 50;
float frequency = 2;
float frequency2 = 2;
float x, x2;

PFont myFont;

void setup(){
  size(600, 200);
  background(127);
  myFont = createFont("verdana", 12);
  textFont(myFont);
}

void draw(){
  background(127);
  noStroke();
  fill(255);
  ellipse(width/8, 75, radius*2, radius*2);
  
  px = width/8 + cos(radians(angle))*(radius);
  py = 75 + sin(radians(angle))*(radius);
  
  rectMode(CENTER);
  fill(0);
  rect(px, py, 5, 5);
  stroke(100);
  line(width/8, 75, px, py);
  stroke(200);
  
  angle2 = 0;
  
  for (int i = 0; i<width; i++){
   px2 = width/8 + cos(radians(angle2))*(radius);
   py2 = 75 + sin(radians(angle2))*(radius);
   point(width/8 + radius+i, py2);
   angle2 -= frequency2;
  }
  
  noStroke();
  ellipse(width/8+radius+x, py, 5, 5);
  angle -= frequency;
  x+=1;
  
  if (x >= width-60){
    x = 0;
    angle = 0; 
  }
  
  stroke(50);
  line(px, py, width/8+radius+x, py);
}
