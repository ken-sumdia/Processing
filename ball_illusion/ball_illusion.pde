int x, vx;
int y, vy;
PImage offscr;

void setup() {
  size(300, 300);
  background(0);

  x = 100;
  vx = 2;
  y = 100;
  vy = 2;  
  offscr = createImage(width, height, RGB);
}

void draw() {
  x += vx;
  if (x < 50 || x > width - 50) { vx = -vx; }
  y += vy;
  if (y < 50 || y > width - 50) { vy = -vy; }
  
  loadPixels();
  offscr.pixels = pixels;
  offscr.updatePixels();

  background(0);
  noStroke();
  fill(128, 255, 128);
  ellipse(x, 150, 100, 100);
  ellipse(width-x,150, 100, 100);
  fill(255,100,255);
  ellipse(150,y,100,100);
  ellipse(150,width-y,100,100);
  tint(255, 240);
  image(offscr, -3, -3, width + 6, height + 6);
}
