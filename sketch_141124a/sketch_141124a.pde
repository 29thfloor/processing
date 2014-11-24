class Star {
  PShape s;
  float x, y;
  
  Star(){
    s = createShape();
    s.beginShape();
    s.fill(255);
    s.stroke(185);
    s.strokeWeight(2);
    
    s.vertex(0, -50);
    s.vertex(14, -20);
    s.vertex(47, -15);
    s.vertex(23, 7);
    s.vertex(29, 40);
    s.vertex(0, -25);
    s.vertex(-29, 40);
    s.vertex(-23, 7);
    s.vertex(-47, -15);
    s.vertex(-14, -20);
    s.endShape(CLOSE);
  }
}

Star star;

void setup(){
  size(500, 500, P2D);
  background(0);
}

void display(){
  star = new Star(); 
}
