int w = 150;
int h = 150;
float x = 2;
float y = 10;
float dx = 2;
float dy = 2;
PImage qrc;

int red = 220;
int green = 220;
int blue = 80;

void setup() {
  fullScreen();
  smooth();
  strokeWeight(1);
  qrc = loadImage("TinkerTankNewsletter.png");
}

void draw() {
  background(0);
  image(qrc, x, y, w, h);
  if ((x+w) > width || x < 0) {
    dx *= -1;
  }

  if ((y+h) > height || y < 0) {
    dy *= -1;
  }

  x += dx;  
  y += dy;

  if (x == width - w - dx) {
    red = 254;
    green = 80;
    blue = 55;
  } else if (x == 0) {
    red = 150;
    green = 254;
    blue = 110;
  } else if (y == height - h - dy) {
    red = 80;
    green = 100;
    blue = 254;
  } else if (y == 0) {
    red = 254;
    green = 254; 
    blue = 80;
  }

  tint(red, green, blue);
}
