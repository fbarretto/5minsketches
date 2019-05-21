public class CirclePoints {
  float offset;
  float radius;
  float speed;
  float theta;
  PVector pos;
  int size;
  
  CirclePoints(float offset, float radius, float speed, int size) {
    this.offset = offset;
    this.radius = radius;
    this.speed = speed;
    theta = offset;
    pos = new PVector();
    this.size = size;
  }

  void update(PVector pos) {
    theta += speed;
    this.pos.x = radius * cos(theta);
    this.pos.y = radius * sin(theta);
    this.pos.add(pos);
  }

  void render() {
    ellipseMode(CENTER);
    noStroke();
    fill(255,125);
    ellipse(pos.x, pos.y, size, size);
  }
}