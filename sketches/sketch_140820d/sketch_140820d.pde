PImage source;
PImage destination; 

void setup() {
  size(500,500);
  source = loadImage("Icosimnis.gif");
  destination = createImage(source.width, source.height, RGB);
}

void draw() {
  float threshold = 127;
  source.loadPixels();
  destination.loadPixels();
  for(int y = 0; y < source.height; y++){
    for (int x = 0; x < source.width; x++){
      int loc = x + y * source.width;
      
      if (brightness(source.pixels[loc]) > threshold){
        destination.pixels[loc] = color(255);
      } else {
        destination.pixels[loc] = color(0);
      }
    }
  }
  destination.updatePixels();
  image(destination, 0,0);
}
