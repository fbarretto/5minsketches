class Unit {
  PVector pos;
  PVector speed;
  float off;
  
  Unit() {
    pos = new PVector(random(0,width), random(-10,-50));
    speed = new PVector (0,random(2)+1);
    off = random(1);
  }
  
  public boolean update() {
    pos = pos.add(speed);
    off += 0.01;
    return pos.y > width;
  }
  
  
  public void draw() {
    
  }
  
}