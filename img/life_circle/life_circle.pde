float step = radians(45);

void setup() {
  size(600, 600, P2D);
}

void draw() {
  background(#FFFFFF);
  strokeWeight(3);
  circle(300, 300, 400);

  for (int i = 0; i < 4; i++) {
    float x1 = 300 - 200 * cos(step * i);
    float y1 = 300 - 200 * sin(step * i);
    float x2 = 300 + 200 * cos(step * i);
    float y2 = 300 + 200 * sin(step * i);
    line(x1, y1, x2, y2);
  }
  
  save("life_circle.png");
  exit();
}
