class Line {
  int n;
  float c;
  float offSet;
  float speedOffset;
  
  Line(int n, float c) {
    this.n = n;
    this.c = c;
    offSet = random(-0.1,0.1);
    speedOffset = random(0.001,0.003);
  }
  

  void render () {
    for (int i=0; i< n; i++) {
      pushMatrix();
      translate(width/2,height/2,300);
      stroke(c, 100, 100, 80);
      rotate(sin(frameCount*(0.001+speedOffset)+offSet));
      line (i*(width/n)-width/2, -height, i*(width/n)-width/2, height); 
      popMatrix();
    }
  }
}