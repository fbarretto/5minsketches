class Unit {
  PVector pos;
  PVector speed;
  float xoff, yoff;
  
  Unit() {
    pos = new PVector(random(0,width), random(0,height));
    speed = new PVector (0,random(1)+0.5);
    xoff = random(10);
    yoff = random(10);
  }
  
  public boolean update() {
    //pos = pos.add(speed);
    pos.x += noise(xoff)*2-1;
    pos.y += noise(yoff)*2-1;
    
    xoff += 0.01;
    yoff += 0.01;
    return (pos.y > height+10 || pos.y < -10 || pos.x < -10 || pos.x> width+10);
  }
  
  
  public void render() {
    point(pos.x, pos.y);
  }
  
}