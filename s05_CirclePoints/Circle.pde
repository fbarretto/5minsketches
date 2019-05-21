public class Circle {
  List<CirclePoints> points;
  int numPoints = 20;
  float radius = 50;
  float angle;
  float speed = 0.01;

  Circle (int numPoints, int radius, float speed, int size) {
    this.numPoints = numPoints;
    this.radius = radius;
    this.speed = speed;
    angle = TWO_PI/numPoints;

    createPoints(size);
  }

  void createPoints(int size) {
    points = new ArrayList<CirclePoints>();

    for (int i=0; i<numPoints; i++) {
      points.add(new CirclePoints(i*angle, radius, speed, size));
    }
  }

  void update(PVector pos) {
    for (CirclePoints cp : points) {
      cp.update(pos);
    }
  }

  void render() {
    for (CirclePoints cp : points) {
      cp.render();
    }
  }
}