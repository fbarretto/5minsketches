class Rect {
  PVector pos;
  float angle;
  float offSet;
  float speedOffset;

  Rect(PVector pos, int index) {
    this.pos = pos;
    offSet = index+1;
    speedOffset=0.1*(index+1);
    angle=0;
  }

  void update() {
    //angle = map(sin(frameCount*0.001), -1,1,0,TWO_PI)+speedOffset;
    angle += radians(speedOffset);
  }

  void render() {
    pushMatrix();
    translate(pos.x, pos.y);
    rotate(angle);
    rect(50, 50, width/2, height/2);
    popMatrix();
  }
}