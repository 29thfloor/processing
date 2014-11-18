PFont f;
String message = "FUCK YEAH PROCESSING";
float theta;

void setup(){
  size(500,500);
  frameRate(24);
  f = createFont("Arial", 20, true);
}

void draw(){
  background(255);
  fill(0);
  
  textFont(f);
  translate(width/2, height/2);
  rotate(theta);
  textAlign(CENTER);
  text(message, 0, 0);
  theta += radians(15);
  
  if (frameCount < 25) {
    saveFrame("image-####.gif");
  }
}
