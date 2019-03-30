import java.util.List;
import java.util.Iterator;
import codeanticode.syphon.*;

List<Drop> drops = new ArrayList<Drop>();
int maxDrops = 100*width;
Drop d;
SyphonServer server;


void settings(){
  size(displayWidth, displayHeight,P3D);
  PJOGL.profile=1;
}

void setup() {
  
  for (int i=0; i<maxDrops; i++) {
    drops.add(new Drop());
  }
  //d = new Drop();
  //noStroke();
  server = new SyphonServer(this, "Drops");
  stroke(255);
}

void draw() {
  //background(0);
  fill(0,10);
  rect(0,0,width,height);
  
  Iterator<Drop> i = drops.iterator();
  while (i.hasNext()) {
    Drop d = i.next(); // must be called before you can call i.remove()
    // Do something
    if (d.update())
      i.remove();
      //if (random(1)<9) {
      //  drops.add(new Drop());
      //}
  }

  for (Drop d : drops) {
    d.draw();
  }
   
  if (drops.size()<maxDrops) {
    drops.add(new Drop());
    drops.add(new Drop());
    drops.add(new Drop());
    drops.add(new Drop());
    drops.add(new Drop());
    drops.add(new Drop());
  }
  server.sendScreen();
}