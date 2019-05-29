class Unit {
  PVector pos;
  PVector speed;
  float xoff, yoff;
  
  Unit() {
    pos = new PVector(random(0,width), random(-10,-50));
    speed = new PVector (0,random(1)+1);
    xoff = random(10);
    yoff = random(10);
  }
  
  public boolean update() {
    //pos = pos.add(speed);
    pos.x += noise(xoff)*2-1;
    pos.y += noise(yoff);
    
    xoff += 0.01;
    yoff += 0.01;
    return pos.y > width;
  }
  
  
  public void render() {
    point(pos.x, pos.y);
  }
  
}