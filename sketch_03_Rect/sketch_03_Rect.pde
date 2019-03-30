import java.util.*;
import codeanticode.syphon.*;

SyphonServer server;

List<Rect> rectangles;

int max_rect = 40;

void settings() {
  size(800, 800, P3D);
  PJOGL.profile=1;
}

void setup() {
  rectangles = new ArrayList<Rect>();
  
  for (int i=0; i<max_rect; i++) {
    Rect r = new Rect(new PVector(width/2,height/2),i);
    rectangles.add(r);
  }
  
  ellipseMode(CORNER);
  strokeWeight(2);
  noFill();
  stroke(255);
  smooth();
}


void draw() {
  background(0);
  for (Rect r: rectangles) {
    r.update();
  }
  
    for (Rect r: rectangles) {
    r.render();
  }
}