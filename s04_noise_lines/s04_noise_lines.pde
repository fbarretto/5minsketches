import java.util.*;

int MAX_UNITS = width;

List<Unit> units;

void setup() {
  size(800, 800);
  strokeWeight(2);
  stroke(255,150);
  noFill();

  units = new ArrayList<Unit>();

  //for (int i=0; i<MAX_UNITS; i++) {
  //  units.add(new Unit());
  //}
  
  frameRate(30);
}

void draw() {
  fill(0,150);
  rect(0,0,width,height);
  
  update();

  render();
}

void update() {
  Iterator<Unit> it = units.iterator();
  
  while(it.hasNext()) {
    Unit u = it.next();
    if (u.update()) {
      it.remove();
    }
  }
  
  while(units.size()<MAX_UNITS && random(1)<0.8)
    units.add(new Unit());
  
  for (Unit up : units) {
    up.update();
  }
}

void render() {
  for (Unit u1 : units) {
    for (Unit u2 : units) {
      float d = dist(u1.pos.x,u1.pos.y,u2.pos.x,u2.pos.y); 
      if (d>80 && d<150) {
        line(u1.pos.x,u1.pos.y,u2.pos.x,u2.pos.y);
      }
    }
  }
}