public class Drop {
  float x, y;
  float speed;
  float xoff = 0.0;
  
  public Drop() {
    x = int(random(0, 1)*width);
    y = -10 + random(-10, -500);
    speed = random(2,4);
    xoff = random(1);
  }

  public boolean update() {
    y+=speed;
    //x += random(-1, 1);
    xoff = xoff + .01;
    x += map(noise(xoff),0,1,-1,1);
    return y>width;
  }

  public void draw() {
    fill(255, 255-(200*y/height+55));
    //point (x, y);
    pushMatrix();
    translate(x,y);
    rotate(sin(radians(frameCount)));
    rect(0,0, 2, 2);
    popMatrix();
    

  }
}