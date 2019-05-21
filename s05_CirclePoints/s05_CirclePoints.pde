import java.util.List;

List<CirclePoints> points;
int numPoints = 20;
float radius = 50;
float angle;
float speed = 0.01;
void setup() {
  size(800,800);
  
  points = new ArrayList<CirclePoints>();
  angle = TWO_PI/numPoints;
  
  for (int i=0; i<numPoints; i++) {
    points.add(new CirclePoints(i*angle, radius, speed));
  }
}


void draw() {
  background(0);
  for (CirclePoints cp: points) {
    cp.update(new PVector(width/2, height/2));
    cp.render();
  }
}