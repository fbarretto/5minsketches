class Rect {
    PVector pos;
    float angle;
    float offSet;
    float speedOffset;
    
    Rect(PVector pos, int index) {
      this.pos = pos;
      offSet = index+1;
      speedOffset=random(-1,1);
    }
    
    void update() {
      angle = map(sin(frameCount*0.001+offSet), -1,1,0,TWO_PI);
    }
    
    void render() {
      pushMatrix();
      translate(pos.x,pos.y);
      rotate(angle+speedOffset);
      rect(50,50,(width/80)*offSet,(width/50)*offSet);
      popMatrix();
    }
}