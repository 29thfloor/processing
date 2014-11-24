float x, y, z;

void setup(){
  size( 500, 500, P3D);
  x = width/2;
  y = height/2;
  z = 0;
}

void draw(){
  translate(x, y, z);
  rectMode(CENTER);
  rotateZ(PI/8);
  rotateY(PI/8);
  rect(0,0,100,100);
  
  z+=2;
}
