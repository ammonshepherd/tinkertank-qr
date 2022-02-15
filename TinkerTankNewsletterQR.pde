int w = 100;
int h = 100;
float x = 2;
float y = 10;
float dx = 2;
float dy = 2;
PImage qrc;

int Red = 100;
int Green = 25;
int Blue = 55;


void setup() {
  size(1200, 1000);

  smooth();
  strokeWeight(1);
  qrc = loadImage("TinkerTankNewsletter.png");
}

void draw() {
  int halfW = width/2;
  int halfH = height/2;
  background(0);

  //  I | II
  // ---|---
  // III| IV
  //

  // Quadrant I, red
  if (x < halfW && y < halfH) {
    Red = int(map(x, 0, halfW, 200, 255));
    Green = int(map(x, 0, halfW, 18, 25));
    Blue = int(map(x, 0, halfW, 10, 155));

    // Quadrant II, green
  } else if (x > halfW && y < halfH) {
    Red = int(map(x, 0, halfW, 10, 100));
    Green = int(map(x, 0, halfW, 100, 255));
    Blue = int(map(x, 0, halfW, 20, 55));

    // Quadrant III, blue
  } else if (x < halfW && y > halfH) {
    Red = int(map(x, 0, halfW, 10, 100));
    Green = int(map(x, 0, halfW, 18, 55));
    Blue = int(map(x, 0, halfW, 100, 255));

    // Quadrant IV, yellow
  } else if (x > halfW && y > halfH) {
    Blue = int(map(x, 0, halfW, 10, 100));
    Green = int(map(x, 0, halfW, 108, 255));
    Red = int(map(x, 0, halfW, 100, 255));
  } 


  tint(Red, Green, Blue);
  image(qrc, x, y, w, h);
  if ((x+w) > width || x < 0) {
    dx *= -1;
  }

  if ((y+h) > height || y < 0) {
    dy *= -1;
  }

  x += dx;
  y += dy;
}
