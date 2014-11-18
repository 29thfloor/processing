Cell[][] grid;

int cols = 10;
int rows = 10;
int block_size = 50;
int[][] myArray = new int[cols][rows];

void setup() {
  size(500, 500);
  grid = new Cell[cols][rows];
  for (int i = 0; i < cols; i++){
     for (int j = 0; j < rows; j++){
       grid[i][j] = new Cell(i*block_size, j*block_size, block_size, block_size, i+j);
     }
   }
}

void draw() {
  background(0);
  for (int i = 0; i < cols; i++){
    for (int j = 0; j < rows; j++) {
      grid[i][j].oscillate();
      grid[i][j].display();
    }
  }
}

class Cell {
 float x,y;
 float w,h;
 float angle;
 
  Cell(float tempX, float tempY, float tempW, float tempH, float tempAngle) {
    x = tempX;
    y = tempY;
    w = tempW;
    h = tempH;
    angle = tempAngle;
  }
  
  void oscillate() {
    angle += 0.02;
  }
  
  void display() {
    stroke(20);
    fill(127+127*tan(angle), 127+127*sin(angle), 127+127*cos(angle));
    rect(x,y,w,h);
  }
  
}




