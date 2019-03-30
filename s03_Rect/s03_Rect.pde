import java.util.*;
import codeanticode.syphon.*;

SyphonServer server;

List<Rect> rectangles;

int max_rect = 20;
int delay = 2000;

void settings() {
  size(1080, 1080, P3D);
  PJOGL.profile=1;
}

void setup() {
  rectangles = new ArrayList<Rect>();
  
  for (int i=0; i<max_rect; i++) {
    Rect r = new Rect(new PVector(width/2,height/2),i);
    rectangles.add(r);
  }
  
  rectMode(CENTER);
  strokeWeight(4);
  noFill();
  stroke(255,190);
  smooth();
  
  server = new SyphonServer(this, "Rect Syphon");
  
}


void draw() {
  background(0);
  for (Rect r: rectangles) {
    r.update();
  }
  
    for (Rect r: rectangles) {
    r.render();
  }
  server.sendScreen();
  delay(delay);
  delay = 0;
}