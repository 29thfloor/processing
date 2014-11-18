PImage img;

void setup(){
  size(500,500);
  img = loadImage("Icosimnis.gif");   
}

void draw() {
  background(0);
  tint(0,100,50);
  image(img,0,0);
}
