void setup() {
  size(200,200);
  background(255);
  stroke(0);
  
  fill(192);
  rect(20, 20, 40, 40);
  
  fill(0, 0, 255, 128);
  pushMatrix();
  translate(60,80);
  rect(20, 20, 40, 40);
  popMatrix();
}
