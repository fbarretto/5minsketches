
void setup() {
  strokeWeight(4);
  stroke(255);
  noFill();
}

void draw() {
  background(0);
  beginShape();
  vertex(10, 10);
  bezierVertex(80, 0, 80+sin(radians(frameCount))*50, 75, 30, 75);
  endShape();
}