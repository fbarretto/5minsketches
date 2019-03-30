import java.util.*;
import codeanticode.syphon.*;

SyphonServer server;

List<Line> planes;
int n = 3;

void settings() {
  size(800,800, P3D);
  PJOGL.profile=1;
}

void setup(){
  
  planes = new ArrayList<Line>();
  
  for (int i=0; i<n; i++) {
    Line p = new Line(128, random(30,60));
    planes.add(p);
  }
  colorMode(HSB,100,100,100,100);
  strokeWeight(4);
  server = new SyphonServer(this, "Moiré Syphon");
}

void draw() {
  background(0);
  for (Line p: planes) {
    p.render();
  }
  server.sendScreen();
}

void mousePressed() {
  planes.clear();
  for (int i=0; i<n; i++) {
    Line p = new Line(128, random(40,60));
    planes.add(p);
  }
}