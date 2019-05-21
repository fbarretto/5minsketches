import java.util.List;
Circle control;
List<Circle> circles;
int numCircles = 4;

void setup() {
  size(800, 800);

  control = new Circle(numCircles, 200, -0.01, 0);
  circles = new ArrayList<Circle>();

  for (int i=0; i<numCircles; i++) {
    Circle c = new Circle(20, 200, 0.01, 10);
    circles.add(c);
  }
}


void draw() {
  background(0);
  control.update(new PVector(width/2, height/2));

  for (int i=0; i<circles.size(); i++) {
    Circle c = circles.get(i);
    c.update(control.points.get(i).pos);
    c.render();
  }

  //for (int i=0; i<circles.get(0).points.size(); i++) {
  //  strokeWeight(2);
  //  stroke(255);
  //  line(circles.get(0).points.get(i).pos.x, circles.get(0).points.get(i).pos.y,
  //  circles.get(2).points.get(i).pos.x, circles.get(2).points.get(i).pos.y);
  //}
}