class Rect {
  PVector pos;
  float angle;
  float offSet;
  float speedOffset;
  int index;

  Rect(PVector pos, int index) {
    this.pos = pos;
    offSet = index+1;
    speedOffset=(360.0/1800)*(index+1);
    angle=0;
    this.index = index;
  }

  void update() {
    //angle = map(sin(frameCount*0.001), -1,1,0,TWO_PI)+speedOffset;
    angle += speedOffset;
  }

  void render() {
    pushMatrix();
    translate(pos.x, pos.y);
    rotate(radians(angle));
    rect(50, 50, width*0.5, height*0.5);
    popMatrix();
  }
}