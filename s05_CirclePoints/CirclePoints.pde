public class CirclePoints {
  float offset;
  float radius;
  float speed;
  float theta;
  PVector pos;

  CirclePoints(float offset, float radius, float speed) {
    this.offset = offset;
    this.radius = radius;
    this.speed = speed;
    theta = offset;
    pos = new PVector();
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
    fill(255);
    ellipse(pos.x, pos.y, 4, 4);
  }
}