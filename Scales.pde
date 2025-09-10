int r = 16; 

void setup() {
  size(400, 400);
  noLoop();
}

void draw() {
  background(10, 20, 60);
  stroke(140, 210, 250);
  strokeWeight(2);
  noFill();

  int row = 0;
    for (int y = 60; y <= 350; y += 30) {
  int X = (row % 2 == 0) ? 60 : 60 + r; 
    for (int x = X; x <= 350; x += 32) {
      scale(x, y);
     }
    row++;
   }
}

void scale(int x, int y) {
  float k = 0.5; 
  float a = x - r, b = y, c = x, d = y - r, e = x + r, f = y;
  bezier(a, b, a, b - k*r, x - k*r, d, c, d);
  bezier(c, d, x + k*r, d, e, f - k*r, e, f);
}
