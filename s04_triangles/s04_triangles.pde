import java.util.*;

int MAX_UNITS = 50;

List<Unit> units;

void setup() {
  size(800,800);
  strokeWeight(2);
  stroke(255);
  noFill();
  
  units = new ArrayList<Unit>();
  
  for (int i=0; i<MAX_UNITS; i++){
    units.add(new Unit());
  }
}

void draw() {
  background(0);
  //beginShape();
  //vertex(10, 10);
  //bezierVertex(80, 0, 80+sin(radians(frameCount))*50, 75, 30, 75);
  //endShape();
  for (Unit u: units) {
    u.update();
    u.render();
  }
}