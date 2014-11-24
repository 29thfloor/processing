PShape rectangle;

void setup(){
  size(500, 500, P2D);
  fill(255);
  rectangle = createShape(RECT, -50, -25, 100, 50);
}

void draw(){
  background(0);
  translate(mouseX, mouseY);
  rectangle.setFill(color(map(mouseX, 0, width, 0, 255)));
  shape(rectangle);
}
